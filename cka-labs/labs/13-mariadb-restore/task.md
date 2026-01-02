Scenario #13
PV exists and is retained (only one PV).
Task:
- Create PVC named mariadb in namespace mariadb: RWO, 250Mi
- Edit ~/mariadb-deploy.yaml to use the PVC and apply it
- Ensure mariadb deployment is running

Setup note:
Run once on node: bash cka-labs/scripts/prep-files.sh
