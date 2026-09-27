---
title: "Your Infrastructure Has Debt You Can't See: Measuring Topology Debt Before It Causes an Incident"
Type: "talk"
Speakers: ["stanislav-grosman"]
---

A deployment changes more than code.

A five-line change can pass every CI check, touch a single Kubernetes workload, and still depend on a shared runner, an undocumented registry, an external message broker, a manually configured network rule, and a service that only one engineer knows how to operate.

From the perspective of Git, the change is tiny. From the perspective of production, the change can have a surprisingly large blast radius.

We have mature ways to measure infrastructure drift, service health, deployment performance, and change failures. But there is another kind of drift that is much harder to see: the gap between the topology we believe exists and the topology that actually exists.

I call this Topology Debt.

This talk explores how we can model that debt as a measurable property of a software delivery system and, more importantly, whether it can become a leading indicator of operational risk.

We will start with a deceptively simple question:

“Can you accurately draw the path of one production deployment from Git to the user?”

Not approximately. The actual runner, registry, deployment mechanism, cluster, network boundaries, external dependencies, ownership, and failure domains.

Then we will look at why the answer is often much harder than it seems.

The talk will cover:

1. What Topology Debt is
The difference between declared architecture and observed operational reality.
2. Where topology debt comes from
Undocumented dependencies, manual processes, stale architecture diagrams, external services, abandoned infrastructure, ownership gaps, and single-person operational knowledge.
3. How to measure it
A proposed Topology Debt Index that considers factors such as dependency criticality, age, uncertainty, blast radius, and operational knowledge concentration.
4. Why existing DevOps metrics don’t fully capture it
DORA metrics tell us what happened to delivery performance. Observability tells us what is happening at runtime. Topology Debt attempts to answer a different question: how structurally risky is the system before we make the change?
5. The experiment
We will discuss how to construct a declared-vs-observed dependency graph and correlate topology debt with deployment failures, rollbacks, incidents, and recovery time.
6. What this could change
Instead of treating architecture and dependency documentation as static documentation, we can treat the operational topology as a continuously changing, measurable object.

The goal is not to introduce another dashboard metric for the sake of having one.

The goal is to explore whether we can detect a dangerous situation before the incident happens and identify systems where a “small” deployment is operationally anything but small.

The audience will leave with a practical framework for thinking about hidden infrastructure dependencies, a proposed way to quantify them, and ideas for applying the approach to their own CI/CD and production environments.
