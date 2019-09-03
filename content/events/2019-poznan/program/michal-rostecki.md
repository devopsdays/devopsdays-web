+++
Title = "Cilium - container networking based on BPF and XDP"
Type = "talk"
Speakers = ["michal-rostecki"]
+++

eBPF and XDP are kernel technologies which aim for network
performance and can be considered as kind of a response for DPDK.
Network story in Kubernetes and container world is still fresh, but
Cilium and BPF try to make a really good start of it.

Cilium is on open source project which provides networking,
security and load balancing for containers by using eBPF and XDP
technologies in the Linux kernel. It provides eBPF and XDP features to
CRI-O, Docker and Kubernetes. This talk will present an overview on
Cilium, explain the concepts behind it and then provide the project
update, as it reached the 1.0 milestone last year.
