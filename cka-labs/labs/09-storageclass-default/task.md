Scenario #9
Create StorageClass low-latency:
- provisioner: rancher.io/local-path
- volumeBindingMode: WaitForFirstConsumer
- set as default StorageClass
Do NOT modify existing Deployments or PVCs.
