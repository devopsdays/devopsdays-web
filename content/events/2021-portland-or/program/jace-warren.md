+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How Terraform Brought our Kubernetes Cluster Back From the Dead, Twice"
Type = "talk"
Speakers = ["jace-warren"]
+++

Software is fragile. In spite of our best efforts, catastrophe can strike at anytime. At Savi Solutions we set out to build a video streaming platform with a disaster recovery plan that can survive even the worst scenarios. While the intention was never to become a disaster recovery case study, as fate would have it, we would become one, twice!

In this presentation I will cover the different strategies and lessons learned that enabled our kubernetes cluster to come back online in less than 15 minutes such as:

 -  Using Terraform and git to manage infrastructure as code
 -  Setting up a Kubernetes Cluster, Ingress Controller, Domains, and SSL Certs with Terraform
 -  Reviewing and applying Terraform changes via your CI/CD pipeline
 -  Sharing reusable Infrastructure Code with versioned Terraform Modules

By the end of this presentation you should have a better understanding of the tools available and strategies that can be applied to be better prepared for an unexpected catastrophe, should it come.

