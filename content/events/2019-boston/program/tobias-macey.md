---
title: "Infrastructure As Data"
Type: "talk"
Speakers: ["tobias-macey"]

---
Our ability to build and maintain infrastructure has been made easier and faster by the introduction of technologies such as server virtualization, cloud platforms, container orchestrators, and configuration management frameworks. This has led to the mantra of “infrastructure as code”. Unfortunately, this abstraction is leaky and ignores the inherent statefulness of already deployed services.

Some of the challenges that arise when working on infrastructure as code are the inevitable refactorings and how they will interact with the current state of our environments. Adding and removing capacity can be fairly painless because you can largely ignore your current state. The real difficulty arises when you need to evolve or modify existing systems, especially when your data model isn’t structured in a way that is easy to extend.

In this talk we will explore the pain points that happen when dealing with assumptions about your requirements that are invalidated by new or udpated demands on your infrastructure. By doing some up-front design and establishing a domain model that will grow with your business we can avoid some of the incidental complexity that prevents us from evolving our infrastructure in a clean and sustainable manner.
