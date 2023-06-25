#!/bin/bash

# k3d cluster create local-k8s

# https://medium.com/@munza/local-kubernetes-with-k3d-helm-dashboard-6510d906431b

echo "##############################################"
kubectl -n default apply -f admin-user.yml
echo "##############################################"
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard
echo "##############################################"
helm install dashboard kubernetes-dashboard/kubernetes-dashboard
echo "##############################################"
export POD_NAME=$(kubectl get pods -n default -l "app.kubernetes.io/name=kubernetes-dashboard,app.kubernetes.io/instance=dashboard" -o jsonpath="{.items[0].metadata.name}")
echo https://127.0.0.1:8443/
kubectl -n default port-forward $POD_NAME 8443:8443

kubectl -n default create token admin-user