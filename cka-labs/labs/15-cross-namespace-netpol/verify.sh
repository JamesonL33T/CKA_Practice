#!/usr/bin/env bash
set -euo pipefail
kubectl -n frontend get netpol
kubectl -n backend get netpol
echo "Tip: exec into frontend pod and curl backend svc."
