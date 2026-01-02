Scenario #5
Install and configure a Container Network Interface(CNI) of your choice that meets the specified requirements. Choose one of the following CNI options:
Flannel (v0.26.1)
Using the manifest:
kube-flannel.yaml
https://github.com/flannel-io/flannel/releases/download/v0.26.1/kube-flannel.yaml
Calico (v3.29.2)
Using the manifest:
tigera-operator3_29.yaml
https://raw.gtihubusercontent.com/projectcalico/calico/v3.29.2/manifests/tigera-operator.yaml
The CNI you choose must:
Let Pods communicate with each other 
Support Network Policy enforcement
Install from manifest files (do not use Helm)

Goal: Install Flannel v0.26.1 OR Calico v3.29.2 from manifests; must support NetworkPolicy enforcement.
# No setup.yaml required for this scenario
bash cka-labs/labs/05-cni-netpol-enforced/verify.sh
