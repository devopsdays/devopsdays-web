+++
description = ""
title = "GitOps, Continuous Delivery, and Declarative Infrastructure"
type = "new-talk"
speakers = [
        "luke-amdor",
]
youtube = "KU11IMkt8Ao"
+++
We've transitioned over the last couple of years from an imperative Chef based flow with chaotic deployments to a serene GitOps based deployment configuration. As the number of teams, services and deploys was starting to grow at an alarming rate, we realized that something had to be done. We consolidated our deployment configuration to a singular Github repository where changes to all infrastructure and application deployments were maintained. This repository contains the desired state of all environments. Application pipelines roll their releases through this repository using shared Jenkinsfile steps. Configuration and infrastructure changes go through a similar pipeline where changes are promoted through the environments. Differences from the actual running system are reported on. After switching to this, it'd be very hard for me to switch to anything else. It's that good. 

Tools Used: Github, Jenkins Pipelines, Kubernetes, Jsonnet