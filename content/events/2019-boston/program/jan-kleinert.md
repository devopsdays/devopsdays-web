---
title: "Automating Stateful Apps with Kubernetes Operators"
Type: "talk"
Speakers: ["jan-kleinert"]

---
Kubernetes scales and manages stateless applications quite easily, but stateful applications can require more work. Databases, caching systems, and file stores are harder to dynamically manage with data intact, and sometimes come with their own notion of clustering. Operators are Kubernetes agents that know how to deploy, scale, manage, backup, and even upgrade complex, stateful applications.

This talk provides an overview of the Operator pattern introduced by CoreOS, adopted by many community projects like Rook, Prometheus, and others, and supported by the release of the Operator Framework by Red Hat. With an understanding of Operators in place, the session will go on to detail the Operator Framework and its main components, the Operator SDK and the Lifecycle management backplane.
