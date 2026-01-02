Scenario #12
WordPress app (3 replicas) in relative-fawn.
Node resources: cpu=1, memory=2015360Ki.
Adjust ALL Pod resource requests:
- Divide evenly across 3 pods with overhead
- Same request values for containers and initContainers
- Limits do not need changes
Ensure:
- 3 replicas
- Pods Ready
