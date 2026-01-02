#!/usr/bin/env bash
set -euo pipefail
kubectl -n echo-sound get svc echoserver-service >/dev/null
kubectl -n echo-sound get ingress echo -o wide 2>/dev/null || echo "Ingress not created yet"
