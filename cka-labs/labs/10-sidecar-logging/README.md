Scenario #10
A legacy app needs to be integrated into the Kubernetes built-in logging architecture (ie kubectl logs). Adding a streaming co-located container is a good and common way to accomplish this requirement.
Task
Update the existing Deployment synergy-deployment, adding a co-located container named sidecar using the busybox:stable image to the existing Pod. The new co-located container has to run the following command:
/bin/sh -c “tail -n+l -f /var/log/synergy-deployment.log”
Use a Volume mounted at /var/log to make the log file synergy-deployment.log available to the co-located container.
Do not modify the specification of the existing container other than adding the required.
Hint: Use a shared volume to expose the log file between the main application container and the sidecar.


Goal: Add sidecar container sidecar to synergy-deployment using shared /var/log volume (namespace synergy).
kubectl apply -f cka-labs/labs/10-sidecar-logging/setup.yaml
bash cka-labs/labs/10-sidecar-logging/verify.sh
