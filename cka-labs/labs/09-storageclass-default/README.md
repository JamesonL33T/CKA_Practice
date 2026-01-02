Scenario #9
Create a new StorageClass named low-latency that uses the existing provisioner rancher.io/local-path.
Set the VolumeBindingMode to WaitForFirstConsumer.
Make the newly created StorageClass, low-latency, the default StorageClass in the cluster.
Do NOT modify any existing Deployments or PeristentVolumeClaims.

Goal: Create StorageClass low-latency (provisioner rancher.io/local-path, WaitForFirstConsumer) and set as default.
# setup.yaml is empty on purpose; this scenario is mostly your work
bash cka-labs/labs/09-storageclass-default/verify.sh
