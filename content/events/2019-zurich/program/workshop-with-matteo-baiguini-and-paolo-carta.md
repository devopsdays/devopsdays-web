+++
City = "Zurich"
Year = "2019"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Workshop: Continuous Deployment of Polyglot Microservices with Istio"
type = "talk"
speakers = ["paolo-carta", "matteo-baiguini"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

In the last years we have seen the rise of microservices, containers, orchestrators and
lately service meshes as well.

A service mesh is a dedicated infrastructure layer for handling service-to-service
communication, responsible for a reliable delivery of requests through the complex
topology of a microservices architecture, without the single applications needing to be
aware. The concept of the service mesh as a separate layer is tied to the rise of the
cloud-native applications. Not only because the service communication in this world is
incredibly complex, but also it’s a fundamental part of runtime behavior. The service
mesh enhances also advanced deployments techniques as well as integrated circuit breaking
and load balancing.

This talk will introduce the attendees to the Kubernetes universe, to the revolutionary
Jenkins X CI/CD and to the de-facto standard service mesh: Istio, which has been recently
integreted natively in the GKE.

After this talk the attendees will be able to effectively deploy cloud-native applications on any
kubernetes cluster, using advanced deployments techniques.

Main steps:

- Introduction to Kubernetes, Jenkins X and Istio
- Introduction to Spring Boot, Micronaut and Go/Kotlin
- Introduction to Canary deployments
- Familiarise with Jenkins X
- Familiarise with Istio
- Deploy couple of microservices
- Familiarise with microservices code
- Analyse the CI/CD pipeline
- Analyse Istio sidecar
- Canary deployment example
- Blue/Green deployment example
