#!/usr/bin/env bash
set -euo pipefail
systemctl status cri-docker 2>/dev/null || true
sysctl net.ipv6.conf.all.forwarding || true
sysctl net.ipv4.ip_forward || true
sysctl net.netfilter.nf_conntrack_max || true
