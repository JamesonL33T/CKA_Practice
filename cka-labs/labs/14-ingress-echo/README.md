Scenario #14
Create a new Ingress resource echo in echo-sound namespace.
Exposing service echoserver-service on http://example.org/echo using Service port 8080 
The availability of Service echoserver-service can be checked using the following command which should return 200:
curl -o /dev/null -s -w “%{http_code}\n”http://example.org/echo

Goal: Create Ingress echo exposing service echoserver-service at /echo on host example.org (namespace echo-sound).
kubectl apply -f cka-labs/labs/14-ingress-echo/setup.yaml
bash cka-labs/labs/14-ingress-echo/verify.sh

# Test (requires DNS/hosts):
# curl -o /dev/null -s -w "%{http_code}\n" http://example.org/echo
