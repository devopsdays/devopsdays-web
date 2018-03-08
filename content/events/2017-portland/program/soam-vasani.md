+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Fission: Serverless Functions for Kubernetes"
Type = "talk"
Speakers = ["soam-vasani"]
+++



"Serverless" functions allow users to easily create services from source code without dealing with packaging, deployment, scaling, etc.

Fission is a serverless function/FaaS framework built on Kubernetes. Users write functions and map them to HTTP routes. They don't have to deal with container images, registries or even learn Kubernetes in much detail.

Functions can be associated with HTTP routes, events, or timers. Functions consume CPU and memory resources only when running; they are started on-demand and killed when idle. Fission makes on-demand function loading very fast, by keeping an idle pool of containers running, in effect creating a distributed "threadpool".
