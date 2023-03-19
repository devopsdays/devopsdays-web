+++
Talk_date = "2022-09-26"
Talk_start_time = "11:50"
Talk_end_time = "12:20"
Title = "Embracing Change: Policy-as-code for Kubernetes with OPA and Gatekeeper"
Type = "talk"
Speakers = ["ara-pulido"]
+++

Kubernetes provides a native Role based access control (RBAC) authorization scheme, allowing cluster operators to define rules to define which operations users or services can do against a particular Kubernetes object. As more enterprises migrate to cloud native environments like Kubernetes, RBAC alone presents limitations. The need for more scalable ways to define and enforce fine-grained policies increases: how can I limit the number of replicas of a pod for certain users? how can I ensure that all images come from trusted registries?

Gatekeeper is an open source project to integrate Open Policy Agent (OPA) in Kubernetes environments. Gatekeeper allows to define policy as Kubernetes objects, making it easier to adopt policy-as-code practices in Kubernetes environments and sharing reusable policy templates.

In this talk we will demo Gatekeeper for Kubernetes environments. You’ll learn how to adopt policy-as-code techniques and how you can integrate Gatekeeper with your existing tools.