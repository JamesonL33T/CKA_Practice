Scenario #14
Create Ingress resource echo in echo-sound namespace:
- expose Service echoserver-service at http://example.org/echo using service port 8080

Test should return 200:
curl -o /dev/null -s -w "%{http_code}\n" http://example.org/echo
