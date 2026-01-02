#!/usr/bin/env bash
set -euo pipefail
kubectl -n synergy rollout status deploy/synergy-deployment --timeout=180s || true
kubectl -n synergy logs deploy/synergy-deployment -c sidecar --tail=5 2>/dev/null || true
