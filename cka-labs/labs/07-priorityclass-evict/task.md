Scenario #7
Create PriorityClass high-priority for user workloads:
- value = (highest existing user-defined PriorityClass value) - 1
Patch Deployment busybox-logger in priority namespace to use it.
Expect other pods in priority namespace may be evicted.
Do not modify other deployments.
