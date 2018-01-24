+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Repository driven development"
Type = "talk"
Speakers = ["neil-crawford"]
+++

Around eighteen months ago Findmypast started a complete re-architecture of our products and core to that is our adoption of continuous deployment and trunk based development. In order to achieve that we heavily adopted what we've coined repository driven development (RDD). What is repository driven development I hear you ask? It's where you configure all remote systems that your codebase connects to from within the codebase itself. Monitoring, Alerting, Logging, Consumer Driven Contracts, Dashboards, testing and deployment, container requirements.

In this talk I'll run through our Microservice superstructure that we've built and how we can launch and configure a new Microservice in under 10 minutes. Each new Microservice is automatically configured with to all the systems I've previously mentioned which lets our development teams get straight down to writing business logic and not configuring systems into our larger platform.

