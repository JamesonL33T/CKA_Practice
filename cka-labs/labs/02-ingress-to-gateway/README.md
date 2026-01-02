Scenario #2 
Migrate an existing web application from Ingress to Gateway API. Must maintain HTTPS access.
A GatewayClass named nginx is installed in the cluster.
First, create a Gateway named web-gateway with hostname gateway.web.k8s.local that maintains the existing TLS and listener configuration from the existing ingress resource named web.
Next, create an HTTP Route named web-route with hostname gateway.web.k8s.local that maintains the existing routing rules from the current Ingress resource named web.
You can test your Gateway API configuration with the following command:
Curl https://gateway.web.k8s.local.
Finally, delete the existing Ingress resource named web.

Goal: Replace Ingress web with Gateway+HTTPRoute while keeping HTTPS (namespace gateway-migration).
kubectl apply -f cka-labs/labs/02-ingress-to-gateway/setup.yaml
bash cka-labs/labs/02-ingress-to-gateway/verify.sh

# Curl test (requires DNS or --resolve):
# curl https://gateway.web.k8s.local
