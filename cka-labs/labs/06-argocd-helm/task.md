Scenario #6
Install Argo CD using Helm:
- Add repo name: argo
- Chart version: 7.7.3
- CRDs already installed in cluster; configure chart to NOT install CRDs
- Generate template to /argo-helm.yaml
- Install release name argocd into namespace argocd with same values as template

Validate:
helm list -n argocd
test -f /argo-helm.yaml
