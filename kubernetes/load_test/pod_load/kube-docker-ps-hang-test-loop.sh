#! /bin/bash

KUBE_ENDPOINT="45.62.252.55:8080"
NAMESPACE="prod"

while true; do
    replicas=`shuf -i 0-50 -n 1`
    echo scaling to $replicas
    /home/gee/Downloads/kubectl-1.3.3 -s $KUBE_ENDPOINT --namespace $NAMESPACE scale rc pinger --replicas=$replicas
    pending=$replicas
    while [ "$pending" != "0" ]; do
        echo "waiting on $pending pods to reach err state"
        sleep 2
        pending=$(/home/gee/Downloads/kubectl-1.3.3 -s $KUBE_ENDPOINT --namespace $NAMESPACE get pods | awk '{print $3}' | grep "Pending" | wc -l)
    done
done
