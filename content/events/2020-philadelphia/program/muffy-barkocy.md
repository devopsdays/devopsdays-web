+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Infrastrcture as Code: Terraforming RDS"
Type = "talk"
Speakers = ["muffy-barkocy"]
+++

Managing a broad array of infra resources can be challenging as a company grows. But with the adoption of infrastructure-as-code, documenting your resources and maintaining your standards is far more manageable.

At Instacart we've gone all-in on Infrastructure-as-code with Terraform on AWS. This includes more than 50 RDS Postgres instances and PGBouncers.  Migrating to Terraform is a big investment and RDS instances are particularly complex to describe and manage. In two years of using Terraform, the Infrastructure team and data store working groups at Instacart have automated and refined management of our resources in Terraform. So do we recommend that you do the same?

This session touches on the history of our database growth from one RDS instance to dozens of hand-crafted ones and how we eventually achieved repeatability and consistency with Terraform. Muffy Barkocy will cover what we've learned about managing RDS instances, both with and without Terraform, along with the benefits and potential pitfalls of using Terraform with RDS. The presentation will show you how to create, update, and delete RDS Postgres instances, parameter groups, and EC2 instances running PGBouncers, all using Terraform modules.
