Scenario #3
Create an HPA named apache-server in autoscale namespace targeting Deployment apache-server:
- target CPU: 50%
- minReplicas: 1
- maxReplicas: 4
- downscale stabilization window: 30 seconds

Validate:
kubectl -n autoscale describe hpa apache-server
