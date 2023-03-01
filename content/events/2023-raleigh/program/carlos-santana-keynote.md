+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Navigating Disaster Recovery in Kubernetes and Crossplane: Strategies and Tools for Managing Stateful Workloads with GitOps for Platform Teams"
Type = "talk"
Speakers = ["carlos-santana"]
+++

GitOps is a powerful and popular method for deploying workloads using a declarative approach. By using Git as the single source of truth for configuration, GitOps ensures that the desired state of your infrastructure is consistently maintained. However, while GitOps is great for deploying and managing resources, it falls short when it comes to disaster recovery.
When working with stateful workloads, such as databases and S3 buckets, you can't simply assume that delete and recreate is a reliable strategy. In Crossplane, you can deploy these resources using GitOps, but when disaster strikes, you can't simply create a new Kubernetes cluster and point to your Git repo and expect everything to be restored "magically." There is no "magic" when it comes to disaster recovery, just different levels of disasters that require different approaches.

In this talk, we will explore different strategies for handling different levels of disasters. For example, when losing a Kubernetes cluster, you can use Velero to backup and restore the state of your managed resources. When losing an entire region, the platform team needs to deal with configuration changes to work with the new region and you can use an Admission Controller like Kyverno to make it transparent to dev teams.

We will also present case studies and examples of real-world disaster recovery scenarios on AWS using Amazon EKS and Crossplane. By attending this talk, you will gain a deeper understanding of how to approach different levels of disasters and the tools and techniques available to help you manage them. You will also learn how to use GitOps in conjunction with other disaster recovery strategies to ensure that your infrastructure is always available, even in the face of adversity.

