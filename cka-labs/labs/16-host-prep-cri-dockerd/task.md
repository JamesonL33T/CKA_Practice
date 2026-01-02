Scenario #16 (Host-level)
Prepare Linux system for kubeadm + Docker runtime.

Task:
- Install cri-dockerd from local .deb using dpkg
- Enable + start cri-docker service
- Set sysctls:
  net.ipv6.conf.all.forwarding=1
  net.ipv4.ip_forward=1
  net.netfilter.nf_conntrack_max=131072

Validate:
systemctl status cri-docker
sysctl net.ipv6.conf.all.forwarding
sysctl net.ipv4.ip_forward
sysctl net.netfilter.nf_conntrack_max
