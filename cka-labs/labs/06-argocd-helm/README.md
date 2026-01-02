Scenario #6
Install Argo CD in cluster.
Add the official Argo CD Helm repository with the name argo. The Argo CD CRDs have already been pre-installed in the cluster. Generate a helm template of the Argo CD Helm chart version 7.7.3 for the argocd namespace and save to /argo-helm.yaml.
Configure the chart to not install CRDs. Install Argo CD using Helm with release name argocd using the same version as above and configuration as used in the template 7.7.3. Install it in the argocd namespace and configure it to not install CRDs. You do not need to configure access to the Argo CD server UI.

Goal: Add repo argo, template chart v7.7.3 to /argo-helm.yaml, install release argocd in namespace argocd (do NOT install CRDs).
kubectl apply -f cka-labs/labs/06-argocd-helm/setup.yaml
bash cka-labs/labs/06-argocd-helm/verify.sh
