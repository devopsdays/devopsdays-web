+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Reproducible Infrastructure With Terraform and Puppet"
Type = "talk"
Speakers = ["ryan-whitehurst"]
+++


Whether you manage a single application with thousands of identical nodes or a collection of unique, single-purpose servers, reproducibility of your infrastructure is critical to testing, rel
iability, and disaster recovery. Every DevOps tool purports to solve this problem, but too often, it feels like your "automation" involves more checklists than code, and this struggle only ge
ts worse when you try to combine multiple tools. Turns out, though, you actually can make the dream of reproducible infrastructure a reality.

This talk will cover an overview of some patterns for combining Terraform and Puppet to construct fully automated, reproducible infrastructure on AWS, including:

* building Terraform configurations to create AWS resources.
* setting up user data and cloud-init in AWS to connect a new EC2 instance to Puppet.
* using autosign with JWT to securely connect nodes to Puppet without manual intervention.
* cleanly destroying and reprovisioning infrastructure.
* designing everything to allow deploying multiple separate clusters.


