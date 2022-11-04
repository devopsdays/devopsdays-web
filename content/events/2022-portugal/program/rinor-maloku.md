+++
Talk_date = "2022-09-26"
Talk_start_time = "11:10"
Talk_end_time = "11:40"
Title = "Step By Step Kubernetes Observability with eBPF"
Type = "talk"
Speakers = ["rinor-maloku"]
+++

In this talk, I’m exploring how someone can use eBPF to get insights about the communications happening in a Kubernetes cluster. I write an eBPF program and then use the BumbleBee (https://github.com/solo-io/bumblebee) open source project to build and deploy it. This program gathers information about all the network communications happening in the cluster and publish the corresponding metrics that I store on Prometheus. I then deploy a service gets the metrics and correlate them with the Pod and Service IP addresses to build a graph displaying all the communications.