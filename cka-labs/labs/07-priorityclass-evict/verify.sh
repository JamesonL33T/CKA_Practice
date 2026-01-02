#!/usr/bin/env bash
set -euo pipefail
kubectl -n priority rollout status deploy/busybox-logger --timeout=180s || true
kubectl get priorityclass | head -n 50
