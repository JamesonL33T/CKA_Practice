#!/usr/bin/env bash
set -euo pipefail
kubectl -n gateway-migration get gateway web-gateway >/dev/null || echo "Missing Gateway web-gateway"
kubectl -n gateway-migration get httproute web-route >/dev/null || echo "Missing HTTPRoute web-route"
kubectl -n gateway-migration get ingress web >/dev/null && echo "Ingress web still exists (expected deleted at end)" || true
echo "✅ Scenario 2: object checks complete (curl requires DNS/--resolve)."
