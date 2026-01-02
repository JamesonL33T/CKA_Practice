#!/usr/bin/env bash
set -euo pipefail
kubectl get storageclass
kubectl get storageclass low-latency -o yaml 2>/dev/null | egrep -i 'provisioner|volumeBindingMode|is-default-class' || true
