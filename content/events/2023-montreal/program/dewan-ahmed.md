+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Enforce fine-grained policy control across your data infrastructure."
Type = "talk"
Speakers = ["dewan-ahmed"]
+++

Deployment is **hard**. Enforcing policy on how the resources can be deployed is even harder. In this workshop, Dewan Ahmed (Aiven) and Peter ONeill (Styra) will leverage two popular open-source tools, [Terraform](https://terraform.io/) and [Open Policy Agent](https://www.openpolicyagent.org/), to show you step-by-step how to enforce fine-grained control on large-scale deployments across environments for data-related services.

Breakdown of the workshop:

* Module 0: Pre-requisites and setup
* Module 1: A quick overview of Terraform and deploying a single service using Terraform
* Module 2: An overview of Open Policy Agent and how it works
* Module 3:
- Creating multiple data services across development and production environments using Terraform
- Using Open Policy Agent to enforce policies that limit cloud costs and regions where resources can be created
* Module 4:
- Ensuring that the policies were followed
- Cleaning up the resources

At the end of this workshop, you'll have a fairly good understanding of both tools (Terraform and Open Policy Agent). You'll be able to use a general-purpose policy engine to enforce policies on resource creation. Lastly, you will know these policies might apply across the stack in your own organization when dealing with large-scale deployment across development and production environments.