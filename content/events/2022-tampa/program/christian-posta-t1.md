+++
Title = "Configuration as Data, GitOps and multi-cluster: the key to successful service-mesh adoption"
Type = "talk"
Speakers = ["christian-posta"]
+++

GitOps is a way to define workflows for declarative configuration using Git and leveraging controllers to reconcile state. If the entire state of a system can be driven from Git, does it matter which controllers exist if the end state eventually converges correctly? It does matter.

GitOps is a way to define workflows for declarative configuration using Git and leveraging controllers to reconcile state. If the entire state of a system can be driven from Git, does it matter which controllers exist if the end state eventually converges correctly? It does matter. As we build more complicated systems, especially over multiple clusters, using the right abstractions that represent the right intentions at the right layers reduces complexity. In this talk we dig into a common scenario of running a service mesh across multiple clusters and how declarative configuration, gitops, and controllers at the right layers simplifies operation and usage.