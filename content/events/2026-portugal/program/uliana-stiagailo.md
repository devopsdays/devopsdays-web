+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From VPS Hosting to Cloud-Native Isolation: VMs, Containers, and Kata Compared"
Type = "talk"
Speakers = ["uliana-stiagailo"]
+++

Managed hosting looks simple from the outside: each customer gets a website, a database, SSL, backups, logs, and a control panel. The harder question sits underneath: where should the isolation boundary be?

In our first version we shipped hosting on a VPS-based model, one isolated environment per customer. It gave us a clear security boundary, predictable operations, and a fast, safe way to launch. It worked. But that same model raises the next set of platform questions. Can we improve density, provisioning speed, automation, and operational cost without weakening customer isolation?

This talk is the architecture evaluation we ran for the next stage of the platform. We compare three isolation models:

VM/VPS-based isolation
Container-based isolation
Lightweight VM isolation with Kata Containers

It is grounded in what hosting actually demands: PHP configuration, file access, SSL automation, backups, logs, resource limits, customer separation, and everything a control panel is responsible for.

The goal is not to crown one model the winner. We examine the trade-offs that quietly disappear from architecture diagrams: blast radius, shared-kernel risk, host-level control, operational complexity, cost, provisioning speed, and tenant isolation.

You leave with a practical decision framework for evaluating isolation in managed hosting and any other multi-tenant platform.
