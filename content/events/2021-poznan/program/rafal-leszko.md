+++
Title = "Where is my cache? Architectural patterns for caching microservices"
Type = "talk"
Speakers = ["rafal-leszko"]
+++

Everybody knows that we need a cache, but where exactly to place it? Inside your application or as a layer in front of it? In the container or outside the container? In the era of Cloud Native and Microservices these questions get even more complicated. In this session I'll present different architectural patterns for distributed caching: Embedded, Client-Server, (Kubernetes) Sidecar, and Reverse HTTP Proxy Caching.

In this session you'll learn:

- What are the design options for including the caching layer
- How to apply caching layer in Istio (and Service Mesh in general)
- How to use distributed HTTP caching without updating your microservices
- Common pitfalls when setting up caching for your system
