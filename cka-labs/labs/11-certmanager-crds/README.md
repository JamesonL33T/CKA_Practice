Scenario #11
Verify the cert-manager application which has been deployed in the cluster.
Create a list of all cert-manager Custom Resource Definitions(CRDs) and save it to ~/resources.yaml
Make sure kubectl default output format and use kubectl to list CRDs.
Do not set an output format.
Failure to do so will result in a reduced score.
Using kubectl, extract the documentation for the subject specification field of the Certificate Custom Resource and save it to ~/subject.yaml
You may use any output format that kubectl supports.

Goal: Save list of cert-manager CRDs to ~/resources.yaml and extract Certificate.spec.subject docs to ~/subject.yaml.
kubectl apply -f cka-labs/labs/11-certmanager-crds/setup.yaml
bash cka-labs/labs/11-certmanager-crds/verify.sh
