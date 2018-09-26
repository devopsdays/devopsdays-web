+++
Title = "Deploying Hashicorp Consul and Vault on AWS ECS"
Type = "talk"
Speakers = ["tim-hartmann", "steve-huff"]
+++
This talk is primarily directed at someone who would like to learn about how to get started using with Consul and Vault using opinionated Terraform modules to deploy ECS Tasks and Services. We also share our experience and code, and hopeful some entertaining stories about what we learned.

Both Consul and Vault can be challenging when deploying them in an automated manner. Running these applications in containers can add value, but also complexity and engineering tradeoffs; in addition it adds operational overhead.

For example : Configuring and bootstrapping a consul cluster Do I build and maintain my own AMIs’? How to unlock Vault after an autoscaling event. - Should you unlock Vault automatically Backing up Consul clusters (and restoring!) Using sidecar containers to deploy custom configs and health checks

Deploying new AMIs to my ECS cluster without losing quorum on my Consul Cluster Exposing and using the user interfaces and API’s for users and CI purposes.

In this talk we will share our decisions, good, bad, and ugly, on how we approached this problem, as well as share an example Terraform module in order to encourage attendees to try both Consul and Vault. Our goal was to provide a robust Consul and Vault service to our engineers without managing long running instances that requires custom AMIs’ and automation. We wanted to deploy, and aggressively track upstream versions of Consul and Vault, use Amazon Linux AMIs’, and provide a highly available and performant experience.

Prerequisites:

AWS account Terraform, Git installed locally
