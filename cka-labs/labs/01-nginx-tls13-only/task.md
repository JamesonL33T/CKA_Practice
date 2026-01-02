Scenario #1
NGINX Deployment nginx-static in namespace nginx-static uses ConfigMap nginx-config.

Task:
- Update nginx-config to allow ONLY TLSv1.3 connections.
- Restart/recreate resources as needed.

Test (should FAIL once fixed):
curl --tls-max 1.2 https://web.k8s.local
