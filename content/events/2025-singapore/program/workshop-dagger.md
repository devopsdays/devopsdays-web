+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
Title = "Workshop: Abstracting CI into Portable, Reusable Modules That Run Anywhere…Fast!"
Type = "talk"
Speakers = ["vikram-vaswani"]
youtube = ""
speakerdeck = ""
+++

### Workshop

#### Objective:
To introduce participants to Dagger, an open source container engine for CI pipelines. Dagger enables teams to encapsulate their CI workflows in portable, language-agnostic modules and unlock cross-team collaboration.

#### Workshop Overview
In large organizations, CI is often a battlefield between platform engineering teams and application development teams. The former likes standardized workflows, the latter demands customization. The conflict between these two approaches can lead to fragmented outcomes, typically resulting in frustration and lost productivity.

Any solution to this conflict must first understand that modern development takes place in a mix of languages, tools and platforms. In these environments, no one language or tool can “win”; every component must be interoperable with every other.

This workshop will explore how Dagger resolves these conflicts by enabling teams to encapsulate their CI workflows in reusable, shareable Dagger modules. Dagger is ideally suited to modern polyglot environments, because Dagger modules are language-agnostic. For example, a Python function can call a Go function, which can call a TypeScript function, and so on.

This capability immediately unlocks cross-team collaboration. Even though different teams might prefer different languages, the Dagger modules they create are instantly compatible and usable by other teams. It also means that teams no longer need to care which language their CI tooling is written in; every team can use the tools they’re most comfortable with or that best suit their requirements.

#### Workshop Agenda (90 minutes):
Workshop Agenda:

Dagger Introduction (15 minutes)
Presentation on Dagger's capabilities, focusing on its role in modern, polyglot development environments.
Discuss how Dagger modules facilitate interoperability across different programming languages.
Understanding the Example Project (10 minutes)
Clone an example repository from GitHub.
Examine the existing Dockerfile to understand traditional CI practices.
Dagger CLI Setup (5 minutes)
Guide on installing Dagger CLI.
Quick overview of basic commands and functionalities.
Creating a Simple Dagger Module (10 minutes)
Hands-on session to create a Dagger module for a basic task.
Discuss the structure and benefits of modularity in CI.
Implementing a Simple Dagger Function (10 minutes)
Develop a function within a Dagger module to demonstrate cross-language capabilities.
Show how Python, Go, or TypeScript functions can interact within the same pipeline.
Converting Dockerfile to Dagger Pipeline (30 minutes)
Step-by-step conversion of the traditional Dockerfile into a Dagger pipeline.
Highlight how this conversion enhances reusability and reduces configuration drift.
Local Execution of Dagger Pipeline (10 minutes)
Run the Dagger pipeline locally to observe performance, especially caching mechanisms.
Discuss how caching in Dagger speeds up subsequent builds.
Integration with GitHub Actions (15 minutes)
Demonstrate setting up a GitHub Actions workflow to use the Dagger pipeline.
Run the pipeline in a CI environment to see real-world applications.
Dagger Summary (5 minutes)
Recap of Dagger's key features and benefits for CI/CD.
Discuss potential use cases and future directions for Dagger in CI environments.
Q&A Session (10 minutes)
Open floor for questions, clarifications, and discussion on how participants can apply Dagger in their organizations.

#### Key Takeaways

In this workshop, attendees will:

* Learn what Dagger is and where it fits in the DevOps toolkit
* Learn the components of the Dagger ecosystem and how they fit together
* Gain practical knowledge in how to build robust CI/CD pipelines that behave consistently across local and remote environments—no more “works on my machine” surprises
* Learn best practices and get recommendations to help them implement Dagger pipelines in their own organization

Benefits for Developers
* Familiarity: Write your CI pipelines in the same language as your app. Implement, improve and debug them yourself…no ops team dependencies!
* Better DX: Test faster, catch errors earlier in your dev workflow, because your pipeline runs locally…and it’s fast!
* Integration with existing tools: Write code, not YAML, and benefit from your programming language’s entire existing ecosystem of plugins and tools (including IDE code intelligence!)

Benefits for Ops Teams
* Maintainability: No more YAML! Write pipelines as code, get all the benefits of version control, auditing, testability and reusability.
* Consistency: End the “works on my machine” curse - Dagger runs all pipelines in containers, ensuring they work the same everywhere (including in local dev environments!).
* Security: Use Dagger’s built-in isolation to keep host data and resources secure - Dagger pipelines see only the data you explicitly pass to them!

#### Prerequisites for Participants
* Basic understanding of CI/CD concepts
* Familiarity with at least one of these programming languages: Python, Go, TypeScript
* A laptop with your favourite IDE, Docker and the Dagger CLI installed.
* A GitHub account

Useful Links
* [Dagger](https://dagger.io/)
* [Dagger Discord](https://discord.gg/dagger-io)