+++
Title = "From Infrastructure as Code to Environment as Code: Challenges scaling IaC and how to resolve them"
Type = "talk"
Speakers = ["adarsh-shah"]
+++
Infrastructure as Code has made managing infrastructure easier in a lot of ways, but there are many challenges that companies accept as the cost of adopting IaC especially when scaling. This talk digs into these challenges & introduces Environment as Code that helps resolve those challenges.

Infrastructure as Code(IaC) has made managing infrastructure easier in a lot of ways, but there are many challenges that companies accept as the cost of adopting IaC especially when scaling. IaC is good at provisioning individual resources (or a few of them together) but engineering teams want an entire environment with various components like networking, platform (ec2/eks), database, s3 buckets, etc. to deploy and operate their applications.

To provision and tear down an entire environment, these teams have two options. They can either hand roll pipelines to manage individual resources and then manage complex dependencies between these resources within those pipelines or create a monolith IaC for the entire environment. These approaches are inefficient and slow down feature development and innovation. They also make replicating, visualizing & understanding environments difficult. What if there were a better way?

This talk digs into these challenges to try to better understand them and then look at how to resolve them. We will introduce Environment as Code (abstraction over IaC) that enables teams to provision & teardown entire Environments in an efficient way and promotes best practices like loosely coupled infrastructure resources.