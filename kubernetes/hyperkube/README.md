HyperKube
==============

http://kubernetes.io/docs/getting-started-guides/docker-multinode/master/

The start_minion.sh script includes the v1.3.3 fixes:  https://github.com/kubernetes/kubernetes/issues/26943
Mainly the way the kubelet is started up and creating the shared /var/lib/kubelet dirs


export MASTER_IP=
export PORT=8080
export K8S_VERSION=1.3.3
export ETCD_VERSION=2.2.1
export FLANNEL_VERSION=0.5.5
export FLANNEL_IFACE=eth0
export FLANNEL_IPMASQ=true
