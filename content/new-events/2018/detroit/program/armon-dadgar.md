+++
description = ""
title = "Service Mesh for Microservices"
type = "new-talk"
speakers = [
        "armon-dadgar",
]
image = "static/events/2018-detroit/speakers/armon-dadgar.png"
+++
Modern application architectures are embracing public clouds, microservices, and container schedulers like Kubernetes and Nomad. These bring complex service-to-service communication patterns, increased scale, dynamic IP addresses, ephemeral infrastructure, and higher failure rates. These changes require a new approach for service discovery, configuration, and segmentation. Service discovery enables services to find and communicate with each other. Service configuration allows us to dynamically configure applications at runtime. Service segmentations lets us secure our microservices architectures by limiting access. In this talk, we cover these challenges and how to solve them with Consul providing as a service mesh.