+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "To self-host or not to self-host?"
Type = "talk"
Speakers = ["sharon-goldberg"]
+++

Every devops team has its own religion around whether they will choose to self-host a service or outsource it to a SaaS. Do you self-host a SIEM or use a cloud-based offering? Use a self-hosted identity provider like keycloak or ADFS or a cloud-based identity provider like Okta or AzureAD? Run your own secrets manager or outsource this to a third party secret store? Host your own database or outsource to mongo atlas?

This talk aims to take some of the religion out of this decision by presenting a framework that devops teams can use to guide their decision making around self-hosting systems. A few axes in the framework include (a) availability (b) reliability (c) security (d) patching costs (e) complexity of the cloud environment that the system is serving.

Within this framework, we highlight a few cases that produce somewhat counterintuitive recommendations. For instance, one might think security is always improved when you self-host a solution. However, when Kaseya was hacked in 2021, the attacker was only able to compromise customers that used the self-hosted version of the Kaseya software; customers that used cloud-hosted Kaseya emerged unscathed. As another example, self-hosted ADFS is a frequent and fruitful target for attackers (see for instance the NotPetya attack on Maersk in 2017 or the Colonial Pipeline attack of 2022); this has not been the case for AzureAD. And self-hosted exchange servers can be a nightmare to patch even for the most determined devops team, making them an attractive target for hackers. That said, a hack of third party cloud service can be a nightmare to devops team; you don’t want to have to explain yourself if/when Okta get hacked.

We also talk through how the cloud environment itself plays a role in the decision to self-host or not. Do you need to stand up a different instance of the self-hosted service in each of your cloud environments? Do you need to network desperate cloud and datacenter environments in order to allow the self-hosted solution to work? Do you need to alter your firewall rules or trombone your network traffic in order to support access to the cloud-hosted solutions?

Answering the question of self-host vs cloud-host is not always easy. The least we can do is agree on the set of questions that our teams should be asking, the next time we have the opportunity to make this decision!

