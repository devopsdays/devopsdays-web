+++
Title = "Cilium - sieć dla kontenerów oparta o BPF i XDP "
Type = "talk"
Speakers = ["michal-rostecki"]
+++

BPF i XDP to technologie kernela, które mają na celu osiągnięcie wysokiej wydajności sieci, w pewnym sensie można je traktować jako odpowiedź na DPDK. Tematyka sieci w Kubernetes jest wciąż dość świeża w porównaniu do IaaS i maszyn wirtualnych, ale Cilium i BPF starają się wypełnić tę lukę.

Cilium to open source’owy projekt służący jako dostaca sieci z możliwością filtrowania pakietów i load balancingu dla kontenerów. Dostarcza on mechanizmy jądra Linuksa, BPF i XDP, dla projektów związnych z kontenerami takimi jak CRI-O, Docker czy Kubernetes. Ta prezentacja wytłumaczy czym jest BPF/XDP i pokaże feature’y Cilium, dla których warto wybrać go jako plugin CNI dla naszych klastrów Kubernetesa.

