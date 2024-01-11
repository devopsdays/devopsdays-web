+++
Title = "Scaling Infrastructure as Code"
Type = "talk"
Speakers = ["kief-morris"]
+++

Infrastructure codebases are a mess. It doesn’t matter whether you use Terraform, Ansible, Pulumi, CloudFormation, or your own weird tool you cobbled together with Python, I’m pretty sure I’m right about this. And it gets worse when you scale up. More and more environments for testing applications, for multiple teams building their own services and applications, for running across regions, for different clients. All of these things lead to a sprawl of snowflakes as code. So let’s talk about patterns for breaking complex infrastructure into a more manageable structure. We’re not just talking about modules, we’re talking about independently deployable infrastructure stacks, composable, testable, automatically delivered using pipelines. Yeah, we’re talking about scaling our infrastructure code using lessons we should have learned about scaling application code.