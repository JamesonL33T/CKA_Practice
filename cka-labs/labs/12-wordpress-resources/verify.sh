#!/usr/bin/env bash
set -euo pipefail
kubectl -n relative-fawn rollout status deploy/wordpress --timeout=180s || true
kubectl -n relative-fawn get pods
