+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From Cavemen to Captains - Using Kubernetes to Evolve DevOps Adoption"
Type = "talk"
Speakers = ["ragu-srinivasan","ramesh-podila"]
Youtube = "RJgPL1OhYD8"
Vimeo = ""
Speakerdeck = ""
Slideshare = "https://www.slideshare.net/DevOpsDaysDFW/cavemen-to-captains-using-kubernetes-to-evolve-devops-adoption"
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

Our goal at Verizon is to create a shared multi-tenant container platform to:

* Accelerate our public cloud migration strategy
* Improve developer velocity
* Realize cost savings by reducing infrastructure spend
* Optimize resource utilization
* Enhance security, monitoring and governance framework that provides visibility from development to production

We achieved our goals by embracing open source Kubernetes and extending it to deploy a platform that provides a common set of components that are shared across the entire Verizon Enterprise.

The talk will highlight and share our experiences on

* Deployment
  * Securing helm deployments in a multi-tenant environment
<br>  
* Manage Authentication & authorization (RBAC) for multi-tenant platform for large enterprise by leveraging kubectl plugins
<br>  
* Logging
  * Support for diverse logging implementations for both brown(legacy) and green field applications
  * Configuration management using Custom Resource Definitions (CRD)
<br>  
* Load Balancing
  * Efficiently using Ingress objects to manage cost and to provide end to end automation
<br>  
* Security
  * Effectively using tools early on in the development process
  * Establishing container image management, scanning and runtime protection policies