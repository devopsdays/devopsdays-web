+++
City = "Zurich"
Year = "2026"
talk_date = "2026-05-06"
talk_start_time = "15:15"
talk_end_time = "17:25"
title = "Event-Sourced DDD Domain Models with Axon (in Kotlin)"
type = "talk"
speakers = ["oliver-zihler", "alina-liburkina"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

### Workshop

Room: 1.OG - Malen

Modern DevOps practices thrive on systems that are reliable, observable, and easy to evolve - qualities that event-sourced architectures naturally provide.

In this hands-on workshop, you’ll learn how to combine Domain-Driven Design (DDD) with CQRS and Event Sourcing using the Axon Framework and Kotlin to model and implement a small but complete domain.

Starting from a short Event Storming exercise, participants will explore the flow of domain events and commands, then step by step build a working event-sourced domain model:

* Understanding how CQRS cleanly separates write and read responsibilities
* Designing DDD Aggregates, Entities, and Value Objects
* Implementing Commands, Domain Events, Invariants, and Projections
* Exposing domain use cases through REST APIs

Finally, we’ll look at how event-sourced systems can evolve safely over time - introducing the basics of event versioning and upcasting, and discussing what can be replayed, rebuilt, or reset to keep systems healthy in production.

By the end, you’ll have a solid understanding of how to design, implement, and maintain traceable, evolvable, and DevOps-friendly event-sourced domain models with the Axon Framework and Kotlin.

Prerequisites:
Basic knowledge of Kotlin or Java and Spring Boot.
We’ll introduce the core DDD concepts along the way.
Bring your laptop for hands-on coding!

Workshop Setup & Technical Requirements:
To participate in the workshop, please ensure your local environment is prepared with the following technologies:
- Maven 3.9+
- Java 25
- Docker / Docker Compose
Docker is important, as it will be used to run supporting infrastructure (e.g. PostgreSQL).

The workshop code is available on GitHub: https://github.com/codeartify/devopsdays2026

Please note that the repository is still being finalized. Updates may be pushed up until the day of the event. 

If you are able to clone and run the project successfully ahead of time (see the README.md of the repository), you are well prepared.