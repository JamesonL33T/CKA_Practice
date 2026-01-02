Scenario #10
Update Deployment synergy-deployment:
- add sidecar container named sidecar using busybox:stable
- command: /bin/sh -c "tail -n+1 -f /var/log/synergy-deployment.log"
- shared volume at /var/log so sidecar can access synergy-deployment.log
Do not modify existing app container beyond required volume mounts.
