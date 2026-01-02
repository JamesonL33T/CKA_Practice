#!/usr/bin/env bash
set -euo pipefail

# Delete common namespaces used in labs
kubectl delete ns \
  nginx-static gateway-migration autoscale \
  priority sp-culator synergy cert-lab relative-fawn mariadb echo-sound \
  frontend backend \
  --ignore-not-found

# Cluster-scoped items created by scenarios
kubectl delete priorityclass high-priority --ignore-not-found || true
kubectl delete storageclass low-latency --ignore-not-found || true

echo "✅ Cleanup complete."
