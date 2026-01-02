#!/usr/bin/env bash
set -euo pipefail
kubectl -n mariadb get pvc mariadb 2>/dev/null || true
kubectl -n mariadb get deploy mariadb 2>/dev/null || true
