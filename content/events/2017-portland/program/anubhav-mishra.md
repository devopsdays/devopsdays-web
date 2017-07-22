+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Taming Terraform workflow using modules and Github for change management."
Type = "talk"
Speakers = ["anubhav-mishra"]
+++


Hootsuite was one of the early adopters of Terraform and faced some challenges early on with Terraform workflow. 
* This session will cover how Hootsuite uses Terraform modules and leverages them to bridge the gap between devs and 
operations. 
* We will discuss how we came up with our own state management system that helps us safely mutate the state of our 
infrastructure from one state to the other. How you can organize your Terraform states across multiple tiers of your 
infrastructure. We will also talk about our own HTTP remote state store on top of S3 that enables us to edit states 
and rollback.
* Most importantly, we came up with our own Terraform workflow that uses github pull requests to do approvals and 
state locking so we don’t corrupt Terraform states for our infrastructure.
 
 For the demo portion of the session we will take an example of a real Hootsuite infrastructure deployment and see 
 the lifecycle through the Terraform workflow that we use at Hootsuite. This demo will showcase:
 * Use of Terraform modules
 * Use of multiple remote state dependencies
 * Github workflow for approvals
 * Explore Terraform state and attempt to roll back.

