+++
description = ""
title = "Continuous Delivery on ECS"
type = "new-talk"
speakers = [
        "tony-burns",
]
youtube = "yZ9_A7KlZqM"
+++
Amazon Elastic Container Service is an orchestration service for Docker containers in clusters of EC2 instances. We’ll dive into the details of how Capital One deployed its first ECS cluster, with full 
zero-downtime continuous delivery and multi-region resiliency for both the ECS cluster itself and services deployed to it.

- Auto scaling architecture for ECS clusters with CloudFormation and multiple environments
- Continuous delivery for ECS clusters with zero-downtime blue/green deployments
- Logging and monitoring with CloudWatch, New Relic, and ELK
- Security considerations