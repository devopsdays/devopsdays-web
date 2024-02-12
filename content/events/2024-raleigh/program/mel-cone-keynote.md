+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Rapidly Scaling for Breaking News with Karpenter and KEDA"
Type = "talk"
Speakers = ["mel-cone"]
+++

Scaling is hard, but have you ever tried scaling for breaking news? Whether for a hot headline or the latest Crossword, The New York Times may need to double the number of nodes in our Kubernetes clusters in under two minutes. Traffic spikes from breaking news alerts occur without warning, last only a few minutes, and at their peak serve more than 100k requests per second.

In this talk, we’ll explore how The New York Times multi-tenant EKS clusters scale using Karpenter and KEDA, taking into account that traffic to our unified HTTP ingress is oftentimes the biggest bottleneck. We’ll discuss the design decisions we made while taking into account flexibility, maintainability, and cost savings.
