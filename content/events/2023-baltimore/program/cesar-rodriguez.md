+++
Talk_date = "2023-05-23"
Talk_start_time = ""
Talk_end_time = ""
Title = "Introduction to IaC Security: Using IaC Securely and as a Security Catalyst"
Type = "talk"
Speakers = ["cesar-rodriguez"]

+++

Infrastructure as Code (IaC) improves automation and predictability of your infrastructure management workflows, and can deliver similar benefits on the security front. In this talk we’ll discuss the basics of using IaC securely and how its use can enhance the security of your systems.

The use of Infrastructure as Code (IaC) for infrastructure provisioning greatly simplifies the management of complex architectures which could be fragile if manually maintained while allowing for version-controlling our infrastructure’s configuration and providing visibility into how the infrastructure has been provisioned and configured. 

While IaC provides great operational benefits, care must be taken to ensure that it's is being used securely such as: ensuring that any secrets or sensitive information passed to your code is not exposed to unauthorized access; ensuring that security best practices are followed when collaborating with others; and that external dependencies, such as modules and providers, are retrieved from trusted sources where their integrity hasn’t been tampered with. 

With the appropriate workflows around it, IaC can be used to enforce security best practices in your environment. It can detect drift from manual or other unauthorized changes. The code can be analyzed to detect any security issues before any infrastructure is provisioned. Also, the relationships between resources defined in your IaC code can be used as part of threat modeling to determine the risk of any security threats to your environment. 

In this talk we’ll discuss security considerations while using Infrastructure as Code from how to use it securely to using it to identify and manage security threats. 

