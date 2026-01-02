Scenario #1
An NGINX deployment named nginx-static is running in the nginx-static namespace. It is configured using a configmap named nginx-config. Update the nginx-config configmap to allow only TLSv1.3 connections. Re-create, restart or scale resources as necessary. Test the changes by using command:
Curl - -tls-max 1.2 https://web.k8s.local
As TLSv1.2 should not be allowed anymore, the command should fail.

Goal: Update nginx-config to allow only TLSv1.3 for nginx-static (namespace nginx-static).
kubectl apply -f cka-labs/labs/01-nginx-tls13-only/setup.yaml
bash cka-labs/labs/01-nginx-tls13-only/verify.sh

# Curl test (requires DNS or --resolve):
# curl --tls-max 1.2 https://web.k8s.local  # should FAIL after you fix it
