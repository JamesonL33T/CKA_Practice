#!/usr/bin/env bash
set -euo pipefail
kubectl -n sp-culator get deploy front-end
kubectl -n sp-culator get svc front-end-svc -o wide
