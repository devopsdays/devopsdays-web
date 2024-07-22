+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Creating Immutable Infrastructures with Kairos"
Type = "talk"
Speakers = ["mauro-morales"]
+++

In this talk, we will introduce Kairos, an open-source project that aims to
create immutable Operating Systems designed for Kubernetes. This includes a
toolset that simplifies operations at the edge in a cloud-native way.

Edge computing has become increasingly popular due to its ability to save costs
by processing information closer to the data before sending filtered and
computed information to a centralized application or data warehouse hosted in
the cloud. Kubernetes is an ideal solution for edge computing because it
natively builds components that facilitate the lifecycle management of modern
edge applications.

However, as we scale the number of edge locations, we face operational
challenges, such as interacting with cluster configurations at scale without
creating unique configurations for each location, ensuring security for remote
clusters and applications, upgrading Kubernetes clusters without specific
domain knowledge, and minimizing disruptions during maintenance windows for
smaller form factor hardware.

Kairos acts as an engine delivering immutable Kubernetes-enabled Linux OS from
OCI conformant container images. It provides unique capabilities such as VPN
peer-to-peer mesh, a distributed ledger to automate Kubernetes cluster
bootstrapping and coordination, and zero-touch provisioning with a QR code
scan. But more importantly, it uses a declarative model backed by Kubernetes
CRDs. It manages distributed Kubernetes operations at the edge from a
centralized Kubernetes cluster.

In this presentation, we will explain the foundations and concepts of Kairos
and demonstrate its capabilities.
