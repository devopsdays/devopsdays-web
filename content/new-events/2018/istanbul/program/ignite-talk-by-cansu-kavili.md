+++
description = ""
title = "Why do we need Istio?"
type = "new-talk"
speakers = [
        "cansu-kavili",
]
+++
A few years back, most software systems had a monolithic architecture and slow release cycle. Lately, there has been a clear move towards microservices architecture, which is optimized for scalability, elasticity, and speed of change. But microservices architecture can become complicated. Because with microservices, we also need to figure out the service discovery, traffic management, load balancing, service identity and security, policy enforcement etc.. It's easy if you have a simple application but as the number of services increases, this will become overwhelmingly complex. We need a mechanism that provides more visibility and control all the network of microservices. So this is where a service mesh comes in. In this ignite talk, Cansu will talk about Istio; an open source service mesh framework to connect, manage, and secure microservices, and what kind of insights it brings to solve these problems.