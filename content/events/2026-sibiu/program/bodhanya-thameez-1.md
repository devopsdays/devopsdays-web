+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Providing secure Ingress into a multi-tenanted cluster using GatewayAPI in a Kubernetes native manner"
Type = "talk"
Speakers = ["bodhanya-thameez"]
+++

Since the announcement of ingress-nginx being deprecated, GatewayAPI adoption has reached an all time high. However with this migration, comes a new approach to thinking about cluster Ingress at all levels. This talk will explain the new paradigm, and present an approach to dealing with secure Ingress in the context of multiple tenants

Leveraging GatewayAPI, cert-manager, external-dns, and Kong Ingress controller to provide HTTP(S)/GRPC(S) ingress access to services within a Kubernetes cluster in an automated fashion using Kubernetes resource manifests.
Once configured, we will utilize RBAC and Hierarchical Namespace controller to enforce required namespace labels, which will then be used to secure/configure Ingress hosts and routes in the context of a multi-tenanted cluster.
