+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Managing Kubernetes with Istio"
Type = "talk"
Speakers = ["mofizur-rahman"]
+++

Developers are moving away from large monolithic apps in favor of small, focused microservices that speed up implementation and improve resiliency. Microservices and containers changed application design and deployment patterns, but along with them brought challenges like service discovery, routing, failure handling, security and visibility to microservices.

“Service mesh” architecture was born to handle these features. Applications are getting decoupled internally as microservices, and the responsibility of maintaining coupling between these microservices is passed to the service mesh.Istio, a joint collaboration between IBM, Google and Lyft provides an easy way to create a service mesh that will manage many of these complex tasks automatically, without the need to modify the microservices themselves.

In this talk we will see how istio can be used to manage traffic, gather metrics and enforce policies in a demo application running microservices. We will learn why kubernetes need “service mesh” and how does Istio improve managing Kubernetes workload.
