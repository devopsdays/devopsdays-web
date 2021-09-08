+++
Talk_date = "2021-05-04"
Talk_start_time = "14:55"
Talk_end_time = "15:15"
Title = "GitOps: yea or nay?"
Type = "talk"
Speakers = ["ricardo-castro"]
+++

GitOps is a paradigm or a set of practices that empowers developers to perform tasks which typically (only) fall under the purview of operations. It’s a way to do Kubernetes cluster management and application delivery by using Git as a single source of truth for declarative infrastructure and applications. Being Git at the center of delivery pipelines, engineers use familiar tools to make pull requests to accelerate and simplify both application deployments and operations tasks to Kubernetes.

GitOps software agents (e.g. ArgoCD, Flux and Jenkins X) can alert on any divergence between Git with what's running in a cluster, and if there's a difference, Kubernetes reconcilers automatically update or rollback the cluster depending on the case.

This talk will include a demo of ArgoCD/Flux/Jenkins X on how to configure and use it to accelerate and simplify application deployments.
