---
title: "When AI Writes Code, Pipelines Must Verify"
Type: "talk"
Speakers: ["niharika-pujari"]
---

AI-assisted development is changing how quickly teams can create and modify software. But as code generation gets faster, the verification process can become the new bottleneck.

A generated change may compile, pass basic unit tests, and still introduce subtle problems: missing error states, inaccessible interfaces, fragile integrations, security issues, or behavior that only becomes visible in production.

This talk looks at how DevOps practices can close that verification gap.

We will walk through a layered approach for moving validation into the development and delivery pipeline, including:

- lightweight checks during local development
- automated quality and accessibility checks on pull requests
- unit, integration, and end-to-end verification
- CI gates for higher-risk changes
- production observability as the final feedback loop
- deciding which AI-generated changes require stronger human review

Rather than treating AI-generated code as inherently trustworthy or inherently risky, the goal is to build pipelines that verify it continuously.

Attendees will leave with a practical framework they can apply to existing CI/CD workflows to increase development speed without giving up reliability, security, or inclusive user experience.
