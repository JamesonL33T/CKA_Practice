Scenario #5
Install CNI from manifests (no Helm):
- Flannel v0.26.1 OR Calico v3.29.2
Requirements:
- Pods can communicate
- NetworkPolicy enforcement supported

Validate:
- Apply a deny-all NetworkPolicy in a test namespace
- Confirm traffic is blocked
