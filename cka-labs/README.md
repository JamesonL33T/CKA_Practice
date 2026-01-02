# CKA Practice Labs (17 Scenarios)

This repo contains 17 repeatable practice scenarios. Each scenario lives in its own folder:
- `task.md`     : what to do (no solution)
- `setup.yaml`  : starting state (creates resources + sometimes intentionally “wrong” config)
- `verify.sh`   : validation checks after you finish

## Quick start (on your k3s/k8s node)
1) Install platform components once (Ingress, Gateway API controller, metrics-server, cert-manager, local-path, etc.):
   bash bootstrap/01-install-platform.sh

2) Create all lab environments:
   cd cka-labs
   make setup

3) Practice scenario-by-scenario:
   # Example
   bash labs/01-nginx-tls13-only/verify.sh

4) Cleanup:
   make cleanup

## Notes
- Some scenarios require host-level actions (Scenario 16) and won’t be created via Kubernetes YAML.
- For curl hostnames like `web.k8s.local`, you may need `/etc/hosts` or curl `--resolve`.
