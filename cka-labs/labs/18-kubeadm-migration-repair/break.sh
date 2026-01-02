#!/usr/bin/env bash
set -euo pipefail

echo "⚠️ This script intentionally BREAKS a kubeadm control-plane node."
echo "Run only on a disposable kubeadm VM."

if [ "$(id -u)" -ne 0 ]; then
  echo "Run as root."
  exit 1
fi

MANIFEST_DIR="/etc/kubernetes/manifests"
APISERVER="${MANIFEST_DIR}/kube-apiserver.yaml"

if [ -f "$APISERVER" ]; then
  # Replace the etcd server flag with a bogus endpoint (common migration failure)
  if grep -q '^ *- --etcd-servers=' "$APISERVER"; then
    sed -i 's#^ *- --etcd-servers=.*#    - --etcd-servers=https://10.255.255.254:2379#' "$APISERVER"
  else
    echo "WARNING: --etcd-servers flag not found in $APISERVER (manifest format differs)."
  fi
  echo "Broke etcd endpoint in kube-apiserver manifest: $APISERVER"
else
  echo "ERROR: $APISERVER not found. Are you on a kubeadm control-plane node?"
  exit 2
fi

echo "Restarting kubelet to apply broken state..."
systemctl restart kubelet || true

echo "Broken state applied."
