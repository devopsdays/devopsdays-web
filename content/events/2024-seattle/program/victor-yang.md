+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Best Practices on Setting up Multi Cluster Service Mesh in AWS"
Type = "talk"
Speakers = ["victor-yang"]
+++

Talk about the best practices to set up multi cluster service mesh in AWS including use cases, architecture and implementation in AWS.

Imagine in recent years your organization has adopted kubernetes and Istio service mesh. At the end of day, different workloads are running in multiple clusters due to ownership by different tenants, and workload isolation which enables security and compliance benefits. The in cluster traffic is encrypted in mTLS  while deprecates the in house legacy authorization system, in the meantime tons of traffic management features can be leveraged. Life is so good till you want to call a service in the API cluster from an AI/ML cluster in the same manner as if the workload lives in the same mesh. Multi-cluster mesh can come in handy in connecting different types of workload, as well as in locality load balancing and disaster recovery/failover scenarios. Istio service mesh provides the general documentation on how to set up multi-cluster mesh. However, in the real world, that documentation doesn’t cut it. Setting up multi-cluster mesh with the common trust and networking poses a higher learning curve and challenges for beginner level service mesh adopters. Compared to setting up a single cluster mesh, there are a number of key areas in security and networking that introduces complexity,  that is the primary focus of the talk to provide howto in those key areas.

The talk is to improve the overall user experience of setting up multi-cluster mesh by breaking up the problem into smaller pieces, as well as explaining the key design and implementation for each piece.
It will cover:
Topology tradeoffs
  Network topology: one or two networks?
   Control plane topology: multiple primary clusters or a primary and remote cluster?
How to trust each other: Set up common trust between the clusters by leveraging PCA in AWS.
How to connect them: Cross-cluster workload network connectivity.
How to let them discover each other: Cross-cluster workload discovery.
