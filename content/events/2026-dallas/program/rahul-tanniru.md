+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Kubernetes Is Expensive,Until It Isn’t: Lessons from Optimizing EKS at Scale"
Type = "talk"
Speakers = ["rahul-tanniru"]
+++

Kubernetes makes it incredibly easy to scale applications, but it also makes it very easy to overspend on infrastructure. Many clusters end up running with underutilized nodes, oversized pod resource requests, and environments that stay online even when no workloads actually need them.

In this session, I’ll share lessons from optimizing Amazon EKS clusters in a real production environment. After analyzing node utilization, pod resource usage, and workload patterns, we discovered that a large portion of compute capacity across clusters was sitting idle or being used inefficiently.

To address this, we introduced several improvements across the platform. We implemented dynamic node provisioning using Karpenter to launch nodes based on real workload demand and used a mix of On-Demand and Spot instances to reduce infrastructure costs while maintaining reliability. We also improved workload scaling using Horizontal Pod Autoscaler and introduced Vertical Pod Autoscaler to better right-size pod resource requests based on real usage patterns.

Beyond cluster architecture changes, we also implemented operational improvements such as lightswitch scheduling, where non-production environments automatically scale down or shut off during nights and weekends and start again during working hours. This simple practice alone eliminated a surprising amount of unnecessary compute usage that many teams overlook.

This talk will walk through the real challenges we encountered, the architectural and operational decisions we made, and the practical lessons learned from running Kubernetes clusters more efficiently. The goal is to share approaches that platform and DevOps teams can apply to reduce Kubernetes costs without sacrificing reliability or performance.
