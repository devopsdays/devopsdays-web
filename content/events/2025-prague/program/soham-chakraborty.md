+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Running Kubernetes on small scale - lessons learned on operating 'small scale' clusters"
Type = "talk"
Speakers = ["soham-chakraborty"]
youtube = ""
slideshare = ""
slides = ""
+++

Kubernetes is often considered as the tool to tackle large scale traffic, which is supposed to be used by a big team of engineers. This talk presents an opposite approach which shows how Kubernetes can be used in a very small team with limited resources.

It will explore the benefits of running k8s in a small scale and also what pitfalls come with it. It will walk through the steps of provisioning self hosted Kubernetes cluster - kOps - challenges of keeping clusters upgraded without downtime. It will discuss issues encountered in daily operations, applications taking too long to start up anyone, and then how it was tuned with tools like Goldilocks, which uses VPA. It will delve into CI/CD on Kubernetes (using Jenkins and ArgoCD). Keeping an eye on operational costs is essential in a small environment and this talk will discuss how kOps can utlize spot instances everywhere and benefits/challenges with spot instances. The idea of downscaling on schedule with py-kube-downscaler project will be discussed.