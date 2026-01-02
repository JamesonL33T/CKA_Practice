Scenario #18 — kubeadm migration repair (external etcd)

A kubeadm-provisioned single-node cluster was migrated to a new machine and is now broken.
The decommissioned cluster used an external etcd server.

Task:
- Identify broken cluster components and investigate what caused the failure after migration.
- Fix the configuration of ALL broken components (kubelet/static pods/kubeconfigs/manifests/etc) so the cluster runs successfully.
- Restart all necessary services and components for changes to take effect.
- Ensure:
  - the single node is Ready
  - all control plane pods are Ready
  - all kube-system pods are Ready (or in their expected healthy state)

Completion checks (examples):
- kubectl get nodes shows the node Ready
- kubectl get pods -A shows all control-plane / kube-system pods Running/Ready
- kubectl cluster-info works without errors

Notes:
- This is a host-level scenario (kubeadm). No Kubernetes YAML setup.
- Run ONLY on a disposable VM/node.
