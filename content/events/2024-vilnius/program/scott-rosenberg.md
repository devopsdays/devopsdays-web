+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "DevOps Reloaded: It’s Time for CI/CD 2.0"
Type = "talk"
Speakers = ["scott-rosenberg"]
+++
CI/CD tools are moving from click-ops to pipelines as code, but they still lack true collaboration and self-service. They are often monolithic, despite deploying to microservices, and a single  “persona” (i.e. point of failure)  is often responsible for it.

When this persona is in the DevOps domain, they quickly become a bottleneck for the entire engineering organization. Scaling to hundreds of microservices will challenge even the biggest teams.

When  a dev is responsible for the pipeline, it overwhelms devs with security, deployment practices and infrastructure minutiae.

Let’s reimagine CI/CD with building blocks as the backbone of your CI/CD. These modular and policy-driven blocks are given to Dev, Ops, and Security teams to build their own structures. Devs build the software and tests, security build code/image scans, and Ops focus on deployment.

This then empowers platform engineers to take those smaller, and more manageable structures and combine them into a stable and robust operation, supply chain, while at the same time  offering it as a self-service for developers.
In this talk we’ll demonstrate how to break a typical CI/CD pipeline into reusable and modular blocks and combine them into a supply chain allowing separation of responsibilities in CI/CD optimized for each domain’s strength.