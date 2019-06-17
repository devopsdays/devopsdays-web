+++
Talk_date = "2019-06-04"
Talk_start_time = "10:10"
Talk_end_time = "10:40"
Title = "A field guide to the Financial Times"
Type = "talk"
Speakers = ["rhys-evans"]
+++

The FT was a microservices pioneer, and our teams had a lot of freedom to pick the tools & processes they wanted. 5 years on, many people have moved on and those innovative projects are now legacy code. I’ll tell you about our journey, using neo4j & graphQL, towards supporting it all.

I joined the FT about 5 years ago, at around the time the organisation was moving away from a top down, centrally controlled, architect-driven software delivery approach, towards a far more democratised model. After 5 years of this looser model, there are surely few workplaces that have such diversity in the way their business critical services are architected; we use different languages, deploy pipelines, monitoring tools, … it’s kinda like the wild west.

While I was working for the team that were rebuilding www.ft.com from the ground up I was enthusiastic about this, embracing something like the “Move fast and break stuff” ethos. But a year ago I moved into the reliability engineering team and from that standpoint, working with the operations team to try to provide 24/7 support for this spaghetti monster of services, I was confronted with the dark side of giving our engineers all this freedom.

In this talk I’ll take you through that backstory, and then talk about how we’re using the neo4j graph database, with graphQL on top of it, to model how things fit together, who’s responsible for them, and how we use virtuous feedback loops to make it worth their while for teams to keep the information up to date. I’ll also touch on how the system we’ve built is easily extensible, and is now being adapted for use in fulfilling our GDPR obligations (such as cookie and PII audits), attributing total cost of ownership and integrating with our leavers process.