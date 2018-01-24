+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Disposable Infrastructure: You Only Build Me Up To Tear Me Down"
Type = "talk"
Speakers = ["paige-bernier"]
+++

In this talk I’ll draw on my professional experience developing disposable infrastructure.

WHAT IS DISPOSABLE INFRASTRUCTURE & HOW IS IT POSSIBLE
To get the room on the same page I’ll start with my definition of disposable infrastructure, “Automating the process of provisioning, configuring, deploying, and tearing down cloud infrastructure and services.”. Essentially 1 script to go from 0 to live application and from live application back to 0 again.

I will make the case for disposable infrastructure starting with a survey of current infrastructure practices and their pain points.

Next up are appropriate use cases for disposable infrastructure:

* Managing and sharing similar yet distinct environments (development, staging, production, QA)
* A reliable and reproducible setup for end to end testing of new features (since oftentimes in company staging environments it can be difficult to discern whether it was your code that broke things or someone else’s)
* An extensible set up for end users who need to make modifications (e.g. testing new versions of dependencies, deploying the same service multiple times with different versions of your own software to compare differences and ensure the same experience)
* Support engineers can reproduce customer bugs with the exact versions of languages and dependencies
* Following that I’ll kick off a demo showing how given AWS credentials and a program we can go from an empty AWS account to a live running application in 10 minutes.

First walking through the what and why for tools my team chose:

*Terraform for provisioning* - terraform is cloud-agnostic allowing us to continue using it even as we build out into new cloud environments (e.g. Google Cloud)

*Ansible for configuration* - also cloud-agnostic (yay extensibility!). The application my team deploys is multi-language and instead of baking special AMI’s per installation my team decided to use Ansible to create 1 playbook for configuring the host with necessary dependencies and 1 playbook for steps to deploy the service via supervisord.

*AWS for hosting* - this was less of a choice and more of a “we have an AWS account that someone is already paying for” but we would have chosen it anyways as it’s a major cloud provider.

Then talk through and show the code for each major step the program is running through:

* Reading in the configuration file describing the desired infrastructure and set up (1 service per instance)
* Generating a plan and invoking Terraform to provision EC2 instances, security groups, load balancers, and a database
* Generating a playbook and running Ansible to configure each instance according to what service is running on it
* Packaging the deployed environment
