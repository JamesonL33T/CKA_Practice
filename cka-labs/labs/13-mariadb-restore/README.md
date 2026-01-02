Scenario #13
A user accidentally deleted the MariaDB Deployment in the mariadb namespace, which was configured with persistent storage.
Your responsibility is to re-establish the Deployment while ensuring data is preserved by reusing the available PersistentVolume.
Task:
A PersistentVolume already exists and is retained for reuse. Only on PV exist
Create a PersistentVolumeClaim(PVC) named mariadb in the mariadb namespace with the spec:
Access mode ReadWriteOnce and Storage 250Mi
Edit the MariaDB Deployment file located at ~/mariadb-deploy.yaml to use PVC created in the previous step. Apply the updated Deployment file to the cluster. Ensure the MariaDB deployment is running.

Goal: Create PVC mariadb (RWO, 250Mi) and update ~/mariadb-deploy.yaml to use it; apply and ensure running.
bash cka-labs/scripts/prep-files.sh
kubectl apply -f cka-labs/labs/13-mariadb-restore/setup.yaml
bash cka-labs/labs/13-mariadb-restore/verify.sh
