+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
Title = "Workshop: Building and breaking Kubernetes clusters"
Type = "talk"
Speakers = ["daniele-polencic"]
youtube = ""
speakerdeck = ""
+++

### Workshop

Kubernetes promises high availability and resilience, but how does it recover from failures?

In this hands-on session, you will test Kubernetes' fault tolerance by building a cluster from scratch and then methodically breaking it to observe its behaviour. You will gain deep insights into core components, including the control plane and the event-driven architecture that powers Kubernetes.

#### Target Audience

DevOps engineers, SREs, platform engineers, and Kubernetes administrators who want to move beyond theoretical knowledge and gain deeper insights into Kubernetes' resilience features.

#### Workshop Overview

You'll examine how kubelet maintains the desired state and verify the "no single point of failure" design principle. By taking down the cluster one node at a time, you will witness Kubernetes' recovery mechanisms and develop a practical understanding of designing robust, production-ready deployments.

This session is ideal for DevOps practitioners, platform engineers, and anyone looking to strengthen their Kubernetes troubleshooting skills beyond theoretical knowledge.

#### Key Takeaways

* The process of bootstrapping a Kubernetes cluster without relying on managed services
* The inner workings of etcd, API server, scheduler, and kubelet and how they interact
* How Kubernetes detects and responds to node failures in real-time
* Why the system takes 5 minutes to reschedule pods after a node failure
* Critical insights about workload distribution when nodes rejoin the cluster

**Benefits for Operations Teams**, responsible for managing infrastructure, ensuring reliability, and optimizing performance (key concerns in DevOps practices), By the end of the session, you will:

* Have a deep understanding of Kubernetes' fault-tolerance mechanisms
* Understand how to evaluate cluster resilience through controlled experiments
* Learn troubleshooting approaches for common failure scenarios
* Develop practical insights for designing robust production deployments

#### Prerequisites for Participants

* Basic understanding of containers and docker experience
* A laptop with your favourite IDE, Docker and the docker-compose CLI installed.
* A GitHub account

#### Useful Links

1. [Troubleshooting Kubernetes deployments](https://learnk8s.io/troubleshooting-deployments)
2. [Kubernetes instance calculator](https://learnk8s.io/kubernetes-instance-calculator)
3. [Learn Kubernetes Weekly newsletter](https://learnk8s.io/learn-kubernetes-weekly)