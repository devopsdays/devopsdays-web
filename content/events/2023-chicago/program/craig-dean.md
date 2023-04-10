+++
Title = "Transforming Enterprise Culture – Discover’s Move to a Modern Software Platform"
Type = "talk"
Speakers = ["craig-katz", "dean-parke"]
sharing_image = "craig-dean.png"
+++
Over the last few years, Discover Financial Services has been on a journey towards modern software delivery.  At the executive level, there was a desire to attain faster delivery, higher quality, more uptime, lower costs, and greater customer satisfaction.  As those aspirations were cascaded throughout Discover, the entire company was asked to join the journey.

In a large enterprise, it can be difficult to move quickly due to competing priorities, risk aversion, and‚(being in the highly regulated banking industry)‚ to comply with.  Plus, the introduction of Agile approaches resulted in teams coming up with unique approaches to application development to serve their own unique needs.

This is the story of our Journey thus far: what we've done, what we still plan to do, setbacks along the way, and how we have moved past those setbacks.

Phase 1: Adoption of PCF and grassroots CI/CD development.  
We adopted Pivotal Cloud Foundry (PCF) as a stepping stone to containerized hosting. As part of this initiative, we moved approximately 40% of applications from on-premise WebSphere hosting to more modern approaches, mainly SpringBoot and React.  Teams were able to decide how to deploy in the PCF environment which resulted in grassroots CI/CD pipelines springing up without any consistent guardrails or requirements to satisfy.  We learned to do things in new ways, but our collective software approaches became more fractured across the enterprise.

Phase 2: Enterprise pipeline and change management.
The Enterprise Architecture team sponsored a mature grassroots pipelines and invested in making it the Discover standard. There were setbacks related to tool and technology choices that were adopted and then phased out. As centralized adoption grew, innersource contributions helped the pipeline grow faster.  When the innersource community aligned the change management with automated deployments in a blue / green fashion, it finally provided a compelling incentive for more engineers across Discover to adopt the single pipeline.

Phase 3: Cloud migration and observability
As the C-Suite saw the growing viability of the enterprise pipeline, they pushed through the goal to standardize on a target platform (Kubernetes) and reduce the expense of hosting multiple platforms.  The entire enterprise was asked to adopt the single pipeline in 2022 and migrate cloud platforms by 2023.  Over the last 2 years, we have worked tirelessly to create aculture a culture where engineers write automation that is release-ready at all times.  This proved to be a huge challenge as teams had to adopt new platforms that changed some of their fundamental paradigms: moving from on-premises to cloud, monitoring and measuring latency and dynamic scaling, switching to different data-storage options for cache, database, file storage.  

Takeaways:

- Culture shifts require both carrots (encouragement) and sticks (mandates)
- The technical journey to modern software delivery requires a surprising amount of people skills and emotional support.
- Top-down and bottom-up approaches are equally important ‚Äì both are needed.
- Everyone agrees with standardization ‚Äì until it impacts something they like.  
- Turn your biggest challengers into your biggest cheerleaders.