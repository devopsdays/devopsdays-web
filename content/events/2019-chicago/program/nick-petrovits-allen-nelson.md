+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Migrating from VMs to K8s"
Type = "talk"
Speakers = ["nick-petrovits", "allen-nelson"]
+++

Join us as we describe our migration from a limiting cloud deployment on long-running VMs with shared infrastructure to a streamlined immutable infrastructure built on top of Docker and K8s. We'll also discuss techniques to support local development during this transition.

Many teams wish they could reap the widely known benefits of Kubernetes (K8s), but most struggle to migrate to a new infrastructure while simultaneously supporting two deployment models and avoiding impacts to the velocity of software development. In this talk, we describe the particular challenges we faced during our incremental migration 
from multiple long-running singleton EC2 instances to a containerized solution.

We'll highlight:

 - What challenges motivated us to transition to K8s?
 - Approaching an infrastructure migration incrementally to minimize impacts to local development
 and production deployments
 - Developing a solution to provide the same abstraction for local development that exists in production
 - Concurrently supporting multiple deployment models to reduce risk and simplify migration
 - Strategy variations for synchronous and asynchronous services
 - Networking challenges with Vagrant and Docker
 - Integrating K8s with a CI/CD pipeline 
 - Tuning the environment
