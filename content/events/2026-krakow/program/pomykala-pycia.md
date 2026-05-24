+++
Title = "Building a Multi-Team Change Automation Platform with Argo Workflows"
Type = "talk"
Speakers = ["pomykala-grzegorz", "pycia-pawel"]
+++
<style>.talk-page { font-weight: 400; font-size: 1.4em; }</style>

Argo Workflows is widely used for pipelines and team-specific automation, but a different set of challenges appears when multiple teams need to automate changes on shared infrastructure. At that point, the problem is no longer just workflow authoring. It becomes a platform-design problem: how to enable self-service safely, how to manage workflow sprawl, how to reuse common components without creating tight coupling, and how to keep the system maintainable as adoption grows.

We will share practical lessons from evolving Argo Workflows into a multi-team enterprise change automation platform. Our workflow catalog grew from single component migration into 150+ workflows spanning provisioning, upgrades, migrations, application lifecycle management, infrastructure maintenance, and access administration. We will focus on the design choices that made this growth sustainable: separating reusable building blocks from runnable workflows, introducing safe versioning for shared templates, applying risk-based guardrails for different classes of changes, controlling workflow access across teams, and building the testing and promotion model required for long-term maintainability.
