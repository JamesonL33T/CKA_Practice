#!/usr/bin/env bash
set -euo pipefail
kubectl -n mariadb get pv,pvc 2>/dev/null || true
kubectl -n mariadb rollout status deploy/mariadb --timeout=180s || true
kubectl -n mariadb get pods
