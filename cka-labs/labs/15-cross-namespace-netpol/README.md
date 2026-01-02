Scenario #15
We have frontend and backend deployments in separate namespaces(frontend and backend). They need to communicate.
Analyze: Inspect the frontend and backend Deployments to understand their communication requirements.
Apply: From the NetworkPolicy YAML files in the ~/netpol folder, choose one to apply. It must:
Allow communication between frontend and backend.
Be a restrictive as possible (least permissive)
Do not delete or change the existing “deny-all” network policies.

Goal: Allow frontend ↔ backend without deleting/altering deny-all policies. Choose ONE YAML from ~/netpol to apply.
bash cka-labs/scripts/prep-files.sh
kubectl apply -f cka-labs/labs/15-cross-namespace-netpol/setup.yaml
bash cka-labs/labs/15-cross-namespace-netpol/verify.sh
