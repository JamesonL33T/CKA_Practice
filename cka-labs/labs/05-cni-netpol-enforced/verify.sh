#!/usr/bin/env bash
set -euo pipefail
kubectl get pods -n kube-system | egrep -i 'calico|tigera|flannel' || true
