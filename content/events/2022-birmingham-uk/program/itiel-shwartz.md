+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "GitOps: Gold or Pyrite?"
Type = "talk"
Speakers = ["itiel-shwartz"]
+++

In the world of infrastructure as code GitOps has become a popular way to manage automated deployments through CI/CD and microservices architecture in general, as most of our infrastructure is essentially defined in config files today (YAML, JSON, HCL). GitOps is is often used today with K8s-based architectures and systems, because K8s is completely configured in declarative YAML). What this basically means, is that changing anything in your production infrastructure is as simple as changing a line of code.

Until GitOps, CI/CD version control and validating production versions was a virtual wild west. It was nearly impossible to understand which versions are currently running in production, and there was no rapid way to deploy updates. GitOps changed this for the benefit of many organizations. However, when using GitOps, particularly with Kubernetes-based deployments there are some common best practices you should apply, and pitfalls to avoid. This talk will demonstrate how this can be achieved with K8s and Argo as its GitOps management framework.