Scenario #8
Reconfigure the existing Deployment front-end namespace sp-culator to expose port 80/TCP of the existing container nginx.
Create a new service named front-end-svc exposing the container port 80/TCP.
Configure the new service to also expose the individual pods via NodePort.

Goal: Expose Deployment front-end via NodePort service front-end-svc (namespace sp-culator).
kubectl apply -f cka-labs/labs/08-nodeport-frontend/setup.yaml
bash cka-labs/labs/08-nodeport-frontend/verify.sh
