+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Network Audit using Ansible"
Type = "talk"
Speakers = ["daniel-ney"]
+++

I have developed an infrastructure that provides automated audit of Network Configuration (Cisco, Arista and Juniper routers and switches) using Ansible and Jenkins. The audit is based on building a Golden configuration for the devices using Ansible and comparing the Golden configuration against active configuration in the network producing a context-sensitive result. A network-wide audit completes in less than 10 minutes using Jenkins, where the Jenkins jobs are also managed by software (JJB) and source controlled. Any differences attributed to Out-of-band changes or configuration modeling errors can either be played back to the devices or used to update the configuration modeling, respectively. This utility is being used by ViaSat’s Networking devops team to automate building and management of device configuration.