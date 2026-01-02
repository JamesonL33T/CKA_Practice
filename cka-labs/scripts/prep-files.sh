#!/usr/bin/env bash
set -euo pipefail

mkdir -p ~/netpol
touch ~/resources.yaml ~/subject.yaml

# NetworkPolicy options for Scenario 15 (choose one later)
cat <<'YAML' > ~/netpol/allow-fe-to-be-80.yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-frontend-to-backend
spec:
  podSelector:
    matchLabels:
      app: backend
  policyTypes: ["Ingress"]
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          role: frontend
      podSelector:
        matchLabels:
          app: frontend
    ports:
    - protocol: TCP
      port: 80
YAML

cat <<'YAML' > ~/netpol/allow-frontend-ns-to-backend-80.yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-frontend-ns-to-backend
spec:
  podSelector:
    matchLabels:
      app: backend
  policyTypes: ["Ingress"]
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          role: frontend
    ports:
    - protocol: TCP
      port: 80
YAML

# MariaDB deployment file to edit in Scenario 13/17
cat <<'YAML' > ~/mariadb-deploy.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mariadb
  namespace: mariadb
spec:
  replicas: 1
  selector:
    matchLabels:
      app: mariadb
  template:
    metadata:
      labels:
        app: mariadb
    spec:
      containers:
      - name: mariadb
        image: mariadb:11
        env:
        - name: MARIADB_ROOT_PASSWORD
          value: "examplepassword"
        ports:
        - containerPort: 3306
        volumeMounts:
        - name: data
          mountPath: /var/lib/mysql
      volumes:
      - name: data
        # Intentionally wrong for the task; change to PVC "mariadb"
        emptyDir: {}
YAML

echo "✅ Prepared:"
echo "  ~/netpol/*.yaml"
echo "  ~/resources.yaml ~/subject.yaml"
echo "  ~/mariadb-deploy.yaml"
