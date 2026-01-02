Scenario #12
A WordPress application with 3 replicas in the relative-fawn namespace consists of:
cpu 1 memory 2015360ki
Adjust all Pod resource requests as follows:
Divide node resources evenly across all 3 pods.
Give each Pod a fair share of CPU and memory.
Add enough overhead to keep the node stable.
Use the exact same request for both containers and init containers.
You are not required to change any resource limits.
It may help to temporarily scale the WordPress Deployment to 0 replicas while updating the resource requests.
After updates, confirm:
WordPress keeps 3 replicas
All Pods are running are ready

Goal: Adjust requests so 3 replicas share node resources fairly (namespace relative-fawn).
kubectl apply -f cka-labs/labs/12-wordpress-resources/setup.yaml
bash cka-labs/labs/12-wordpress-resources/verify.sh
