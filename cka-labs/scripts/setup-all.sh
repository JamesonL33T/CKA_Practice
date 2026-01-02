#!/usr/bin/env bash
set -euo pipefail
for lab in labs/*; do
  [ -d "$lab" ] || continue
  if [ -f "$lab/setup.yaml" ]; then
    echo "Applying: $lab/setup.yaml"
    kubectl apply -f "$lab/setup.yaml"
  fi
done
echo "✅ Setup complete."
