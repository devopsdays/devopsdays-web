+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Solving trust issues at scale"
Type = "talk"
Speakers = ["omer-levi-hevroni"]
+++

Micro-services are social beings: they can’t function without talking with other services. Every microservice has its own domain, and it usually relies on other micro-services to function properly. But this also raises an interesting question: do we trust all of our micro-services?
The truth is that not all micro-services are the same: some micro-services are more sensitive - for example, services that handle user data. Others are user-facing and therefore riskier. We cannot treat all services as equal. We need a good and robust mechanism to describe who can talk with who.
At Soluto, we are dealing with this challenge for a while. In this talk, I’ll share the journey we went through until we found a solution we’re happy with: a simple and declarative system that allows services to define who can access them. Any dev can request access to any service, and the service owner can review it. In talk, I’ll share how we build this solution, using open source tools like Open Policy Agent, so you can easily build something similar.