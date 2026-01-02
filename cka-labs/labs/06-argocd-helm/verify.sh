#!/usr/bin/env bash
set -euo pipefail
kubectl get ns argocd >/dev/null || echo "argocd namespace missing"
helm list -n argocd 2>/dev/null || echo "Helm not installed or release missing"
test -f /argo-helm.yaml && echo "Found /argo-helm.yaml" || echo "Missing /argo-helm.yaml"
