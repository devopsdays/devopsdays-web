+++
description = ""
title = "Zero-downtime deployment with Kubernetes, Spring Boot and Flyway"
type = "new-talk"
speakers = [
        "nicolas-frankel",
]
+++
Kubernetes allows a lot. After discovering its features, it’s easy to think it can magically transform your application deployment process into a painless no-event. For Hello World applications, that is the case. Unfortunately, not many of us do deploy such applications day-to-day.

You need to think about application backward compatibility, possible rollback, database schema migration, etc. I believe the later is one of the biggest pain point. In this talk, I’ll demo how to update a Spring Boot app deployed on a Kubernetes cluster with a non-trivial database schema migration with the help of Flyway, while keeping the service up during the entire update process.