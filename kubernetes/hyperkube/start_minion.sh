#!/bin/bash

# Set up a bootstrap docker
sh -c 'docker daemon -H unix:///var/run/docker-bootstrap.sock -p /var/run/docker-bootstrap.pid --iptables=false --ip-masq=false --bridge=none --graph=/var/lib/docker-bootstrap 2> /var/log/docker-bootstrap.log 1> /dev/null &'

# Stopping the default docker
service docker stop

# Starting flannel
FLANNEL_DOCKER_ID=$(docker -H unix:///var/run/docker-bootstrap.sock run -d \
    --net=host \
    --privileged \
    -v /dev/net:/dev/net \
    quay.io/coreos/flannel:${FLANNEL_VERSION} \
    /opt/bin/flanneld \
        --ip-masq=${FLANNEL_IPMASQ} \
        --etcd-endpoints=http://${MASTER_IP}:4001 \
        --iface=${FLANNEL_IFACE})

# Getting the flannel subnet that was assigned to this node
FLANNEL_SUBNET=$(docker -H unix:///var/run/docker-bootstrap.sock exec ${FLANNEL_DOCKER_ID} cat /run/flannel/subnet.env | grep FLANNEL_SUBNET | egrep -o '10.*')

# The DOCKER_OPTS string
echo "DOCKER_OPTS=\"-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock --dns 8.8.8.8 --dns 8.8.4.4 --bip=${FLANNEL_SUBNET} --mtu=1472\"" > /etc/default/docker

# Remove the existing docker bridge
/sbin/ifconfig docker0 down
brctl delbr docker0

# Restart the default docker
service docker start

# Make shared volume mount
rm -rf /var/lib/kubelet
mkdir -p /var/lib/kubelet
mount --bind /var/lib/kubelet /var/lib/kubelet
mount --make-shared /var/lib/kubelet

# Start kubelet
docker run \
    --volume=/:/rootfs:ro \
    --volume=/sys:/sys:ro \
    --volume=/dev:/dev \
    --volume=/var/lib/docker/:/var/lib/docker:rw \
    --volume=/var/lib/kubelet/:/var/lib/kubelet:rw,shared \
    --volume=/var/run:/var/run:rw \
    --net=host \
    --privileged=true \
    --pid=host \
    -d \
    gcr.io/google_containers/hyperkube-amd64:v${K8S_VERSION} \
    /hyperkube kubelet \
        --allow-privileged=true \
        --api-servers=http://${MASTER_IP}:8080 \
        --v=2 \
        --address=0.0.0.0 \
        --enable-server \
        --cluster-dns=10.0.0.10 \
        --cluster-domain=cluster.local

# Start kubelet proxy
# proxies kube svc
docker run -d \
   --net=host \
   --privileged \
   gcr.io/google_containers/hyperkube-amd64:v${K8S_VERSION} \
   /hyperkube proxy \
       --master=http://${MASTER_IP}:8080 \
       --v=2
