+++
Talk_date = "2020-03-06"
Talk_start_time = "15:45"
Talk_end_time = "16:30"
Title = "Secrets Management"
Type = "talk"
Speakers = ["murriel-perezmccabe"]
+++

All organizations need to protect certain secrets that are required for deploying and maintaining their infrastructure and applications. Additionally, these organizations may have different legal, business, or technical standards or requirements that must be met with regards to storing and securing these secrets. Generally, secrets can include everything from application credentials to SSH keys, tokens, users and passwords, API keys, service accounts, cryptographic keys, database logins, SaaS logins and more. 
 
This talk will review strategies and tools for managing secrets in different environments, with a particular focus on cloud infrastructure, application secrets, and secrets within the DevOps CI/CD pipeline.
 
A one-size-fits-all secrets management solution does not exist. There is no magic formula that will instantly grant a highly secure, scalable, and easy-to-use system.  Often many factors such as budget, resources, time, team size or other technical limitations may influence the final approach. With rapid development cycles, security can be perceived as an impediment to progress and often the quickest approach is not the most secure approach. However, the impact of a system compromise due to improperly managed secrets can come at a high price, and damages may range from lost data, lowered brand reputation, loss of customer confidence, and cost of recovering and repairing breached systems. Secrets management decisions may also vary based on choice of cloud provider, deployment processes, and systems architecture: bare metal vs virtualized, infrastructure as a service vs platform as a service, Kubernetes and micro services vs monoliths. 
 
During this talk, we will look at different approaches to secrets management, exploring processes and methodologies, best practices and anti-patterns. From here we will dive into specific tools and technologies, from open source to commercial tools. 
