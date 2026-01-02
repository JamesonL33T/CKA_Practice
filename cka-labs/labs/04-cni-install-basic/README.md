Scenario #4
Install and configure a Container Network Interface(CNI) of your choice that meets the specified requirements. Choose one of the following CNI options:
Flannel (v0.26.1)
Using the manifest:
kube-flannel.yaml
https://github.com/flannel-io/flannel/releases/download/v0.26.1/kube-flannel.yaml
Calico (v3.28.2)
Using the manifest:
tigera-operator.yaml
https://raw.gtihubusercontent.com/projectcalico/calico/v3.28.2/manifests/tigera-operator.yaml
Ensure the selected CNI is properly installed and configured in the Kubernetes cluster.

Goal: Install Flannel v0.26.1 OR Calico v3.28.2 from manifests (no Helm).
# No setup.yaml required for this scenario
bash cka-labs/labs/04-cni-install-basic/verify.sh
