Scenario #3
Create a new HorizontalPodAutoscaler(HPA) named apache-server in the autoscale namespace. This HPA must target the existing Deployment called apache-server in the autoscale namespace. Set the HPA to target for 50% CPU usage per pod.
Configure HPA to have at minimum 1 pod and no more than 4 pods(max). Also, we have to set the downscale stabilization window to 30 seconds.

Goal: Create HPA targeting Deployment apache-server (CPU 50%, min 1 max 4, downscale window 30s).
kubectl apply -f cka-labs/labs/03-hpa-apache/setup.yaml
bash cka-labs/labs/03-hpa-apache/verify.sh
