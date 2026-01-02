#!/usr/bin/env bash
set -euo pipefail
kubectl get nodes
kubectl get pods -n kube-system | egrep -i 'flannel|calico|tigera' || true
