#!/usr/bin/env bash
set -euo pipefail

echo "== Node status =="
kubectl get nodes -o wide || { echo "kubectl failed (API down)"; exit 1; }

echo
echo "== kube-system pods =="
kubectl get pods -n kube-system -o wide

echo
echo "== /readyz (if supported) =="
kubectl get --raw='/readyz?verbose' 2>/dev/null | head -n 30 || true

echo
echo "== Recent kube-system events =="
kubectl get events -n kube-system --sort-by=.metadata.creationTimestamp | tail -n 20 || true

echo
echo "✅ Verification script ran. Goal: node Ready + pods Ready + API stable."
