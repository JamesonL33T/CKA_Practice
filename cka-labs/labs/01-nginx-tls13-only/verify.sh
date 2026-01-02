#!/usr/bin/env bash
set -euo pipefail
kubectl -n nginx-static rollout status deploy/nginx-static --timeout=180s
kubectl -n nginx-static get cm nginx-config -o jsonpath='{.data.default\.conf}' | grep -E 'ssl_protocols' || true
echo "✅ Scenario 1: cluster-side validation complete (curl requires DNS/--resolve)."
