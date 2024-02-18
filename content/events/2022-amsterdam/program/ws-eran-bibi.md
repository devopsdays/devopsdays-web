+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Don't Panic: Getting Your Infrastructure Drift Under Control"
Type = "talk"
Speakers = ["eran-bibi"]
+++

In your ever-changing Infrastructure, some changes are intentional while others are not.

Drift is what happens whenever the real-world state of your infrastructure differs from the state defined in your configuration. This can happen for many reasons, sometimes it happens when adding or removing resources, other times when changing resource definitions upon resource termination or failure, and even when changes have been made manually or via other automation tools.

While Terraform itself can detect drifts, in most cases, you will be informed about it too late: just before you are about to deploy new changes to your infrastructure. What's interesting about Terraform though, is that you can apply changes in two separate and distinct steps of "Planning" and "Applying". This means that you have full visibility to what Terraform is planning on doing beforehand, and if you are satisfied with the changes, you can choose to apply them.

So how does this work? When something is changed intentionally, it will appear in the source code, and the Terraform plan will not do anything. However, if any part of the infrastructure has been changed manually, Terraform’s plan will identify this, and alert to the change. In other words, if your IaC drifted from its expected state, then Terraform’s plan will, in fact, detect it.

Applying this simple solution can empower DevOps and developer velocity, with the reassurance and context for unexpected changes in your IaC, in near real-time. This talk will showcase real-world examples, and practical ways to apply this in your production environments, while doing so safely and at the pace of your engineering cycles.
