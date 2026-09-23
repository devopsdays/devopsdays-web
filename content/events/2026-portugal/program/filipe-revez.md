+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Highly Available, Barely Running - Multi-Region HA That Doesn't Cost Twice"
Type = "talk"
Speakers = ["filipe-revez", "pedro-cachaldora"]
+++

High availability is usually designed as an architecture problem and paid for as a finance problem. The reference diagrams look clean — two regions, two providers, traffic balanced between them — and then somebody runs the numbers on keeping a second environment permanently warm.

Unfortunately, the compromise most organisations settle on is worse than either extreme. A standby region gets provisioned, sized for a peak it will probably never see, left running at partial capacity, and quietly never exercised. It costs real money every month, and nobody is entirely confident it works.

Every platform team knows the moment. The DR plan is a document, the failover is theoretical, and the only honest answer to "have we actually tried it?" is "not since the last audit."

This talk explores an open-source approach to multi-region and multi-cloud high availability where standby capacity costs close to nothing until the moment it is needed. We will show how Flux keeps every cluster reconciled to the same declarative state, how KEDA lets workloads sit at zero and come up on demand, and how K8GB handles global DNS-based failover between clusters and providers — with no proprietary global load balancer anywhere in the failover path.

Drawing from real deployments, we will walk through the architecture and be specific about the trade-offs: what DNS-based failover can and cannot guarantee, what recovery time actually looks like when your standby starts from zero, how stateful workloads change the picture, and the failure modes we ran into. We will also be clear about where this pattern does not fit and where a managed global load balancer is still the better answer.

Attendees will learn a concrete, vendor-neutral pattern for multi-region resilience, how to reason about the cost and recovery-time trade-off deliberately rather than by default, and how to build a failover that is cheap enough that you can afford to test it regularly.
