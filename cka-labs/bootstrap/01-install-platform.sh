#!/usr/bin/env bash
set -euo pipefail

echo "[1/6] metrics-server (kubectl top, HPA metrics)"
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl -n kube-system patch deploy metrics-server --type='json' -p='[
  {"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"},
  {"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname"}
]' || true

echo "[2/6] cert-manager"
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/latest/download/cert-manager.yaml

echo "[3/6] ingress-nginx"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml

echo "[4/6] Gateway API CRDs"
kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/latest/download/standard-install.yaml

echo "[5/6] NGINX Gateway Fabric (GatewayClass nginx)"
kubectl apply -f https://github.com/nginxinc/nginx-gateway-fabric/releases/latest/download/install.yaml

echo "[6/6] local-path-provisioner"
kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml

echo
echo "✅ Platform install applied."
echo "Check readiness:"
echo "  kubectl get pods -n ingress-nginx"
echo "  kubectl get pods -n cert-manager"
echo "  kubectl get gatewayclass"
echo "  kubectl top nodes"
