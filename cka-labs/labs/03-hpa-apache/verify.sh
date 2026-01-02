#!/usr/bin/env bash
set -euo pipefail
kubectl -n autoscale get deploy apache-server >/dev/null
kubectl -n autoscale get hpa apache-server
