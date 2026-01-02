#!/usr/bin/env bash
set -euo pipefail
test -s ~/resources.yaml && echo "resources.yaml OK" || echo "resources.yaml missing/empty"
test -s ~/subject.yaml && echo "subject.yaml OK" || echo "subject.yaml missing/empty"
