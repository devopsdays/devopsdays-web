+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Deploy and Destroy: Testing Environments "
Type = "talk"
Speakers = ["michael-arenzon"]
+++

One of the critical factors for development velocity is software correctness. 
Our ability to develop and ship new features fast is bounded by our ability to validate several aspects of the change:
* Does the feature meet the requirements? 
* How does the feature affect existing code, and how can it affect the production environment?
With continues codebase growth and new features being added, naturally our productivity decreases, and our need to improve the guarantees for quality and correctness increase. 

In this talk, I'll focus on testing environments: why developers need a self-serve platform to create a full functioning environment on-demand, how such environments should be managed, and how can one restore part of the lost velocity. I'll cover an internal system we use at AppsFlyer called 'Namespaces' that addresses the issue with the help of Mesos / Marathon, Docker, Traefik, and Consul.
