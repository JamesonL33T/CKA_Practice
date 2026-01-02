Scenario #16
Prepare a Linux system for Kubernetes. Docker is already installed, but you need to configure it for kubeadm.
Task:
Complete these tasks to prepare the system for Kubernetes:
Set up cri-dockerd:
Install the Debian package ~/cri-dockerd_0.3.9.3-0.ubuntu-jammy_amd64.db
Debian packages are installed using dpkg
Enable and start the cri-docker service
Configure these system parameters:
Set net.ipv6.conf.all.forwarding to 1
Set net.ipv4.ip_forward to 1
Set net.netfilter.nf_conntrack_max to 131072

Goal: Install cri-dockerd from local .deb using dpkg, enable/start service, set sysctls.
# No Kubernetes setup required
bash cka-labs/labs/16-host-prep-cri-dockerd/verify.sh
