+++
description = ""
title = "How Fast Was My Kubernetes?"
type = "new-talk"
speakers = [
        "josh-berkus",
]
+++
I know my database will be slower on Kubernetes and cloud native storage, but HOW MUCH slower? This is a question everyone thinking of moving traditionally hosted stateful services like databases to Kubernetes ask all the time. This presentation will detail a series of microbenchmarks on PostgreSQL, CockroachDB and others, running on and off Kubernetes in a variety of configurations, including bare metal, local storage, Ceph and Rook. You'll get a solid idea of what the cost in latency and throughput is for abstracting away your storage problems, and be able to make platform decisions for yourself.