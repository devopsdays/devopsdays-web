+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Managing Kubernetes Deployment with Istio"
Type = "talk"
Speakers = ["mofizur-rahman"]
youtube = ""
slideshare = ""
slides = ""
+++

The industry is moving away from large monolithic apps in favor of small, focused microservices that speed up implementation and improve resiliency. Microservices and containers changed application design and deployment patterns, but along with them brought challenges like service discovery, routing, failure handling, security and visibility to microservices. But something even more subtle happened at the DevOps level. Weekly deployments are becoming a thing of the past and quick and fast deployments are happening daily even hourly. How do you keep your sanity when all this is going on?

“Service mesh” architecture was born to handle these features. Applications are getting decoupled internally as microservices, and the responsibility of maintaining coupling between these microservices is passed to the service mesh. Istio, a joint collaboration between IBM, Google and Lyft provides an easy way to create a service mesh that will manage many of these complex tasks automatically, without the need to modify the microservices themselves.

In this talk we will see how istio can be used to manage deployments in a demo application running microservices. We will learn why kubernetes need “service mesh” and how does Istio help improve overall devops flow.