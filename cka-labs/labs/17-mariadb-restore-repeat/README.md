Scenario #17
A user accidentally deleted the MariaDB deployment in the mariadb namespace, which was configured with persistent storage. Your responsibility is to re-establish the Deployment while ensuring data is preserved by reusing the available PersistentVolume.
Task:
A PersistentVolume already exists and is retained for reuse, only one pv exists.
Create a PersistentVolumeClaim(PVC) named mariadb in the mariadb namespace with the spec: AccessmodeReadWriteOnce and Storage 250Mi
Edit the MariaDB Deploy file located at ~/mariadb-deploy.yaml to use PVC created in the previous step.
Apply the updated Deployment file to the cluster.
Ensure the MariaDB deployment is running and stable.

Goal: Repeat Scenario 13 steps again to practice restoration workflow.
bash cka-labs/scripts/prep-files.sh
kubectl apply -f cka-labs/labs/17-mariadb-restore-repeat/setup.yaml
bash cka-labs/labs/17-mariadb-restore-repeat/verify.sh
