Scenario #2
Migrate an existing app from Ingress to Gateway API, maintaining HTTPS.

Assumptions:
- GatewayClass named nginx is installed.
- Existing Ingress resource name: web

Task:
1) Create a Gateway web-gateway for hostname gateway.web.k8s.local that maintains TLS/listener intent.
2) Create an HTTPRoute web-route for hostname gateway.web.k8s.local that maintains routing intent.
3) Delete Ingress web.

Test:
curl https://gateway.web.k8s.local
