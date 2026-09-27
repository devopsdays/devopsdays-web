---
title: "The Myth of Autonomous Operations: Why Human-in-the-Loop AI Builds Better Systems"
Type: "talk"
Speakers: ["josh-jordan"]
---

For decades, DevOps has steadily removed humans from repetitive operational work.

Scripts became configuration management. Configuration management became infrastructure as code. CI/CD and GitOps automated increasingly complex changes.

AI agents introduce a different transition: we’re beginning to automate not just execution, but judgment.

An LLM can already inspect logs, correlate metrics, search documentation, summarize an incident, form troubleshooting hypotheses, and recommend actions. Increasingly, it can also invoke the tools required to carry those actions out.

So the question is no longer simply:

Can AI operate production systems?

It’s, when should we allow it to?

Drawing on experience with large-scale cloud operations, incident response, AI-assisted troubleshooting, and building AI systems with explicit review boundaries, this talk introduces a practical model for answering that question:

Observe, interpret, recommend, decide, act

AI can already do substantial work on the left side of this chain. But as we move toward actions involving greater uncertainty, blast radius, customer impact, or irreversibility, the appropriate boundary between automation and human judgment changes.

We’ll use three questions to decide where that boundary belongs:

1. How uncertain is the decision?
2. How reversible is the action?
3. What happens if the system is wrong?

We’ll also examine an unexpected example from a completely different domain: a child-facing AI application where generated content must pass editorial, cultural, validation, and human approval stages before publication.

The domain is different from production operations, but the architectural lesson is the same:

Generation and authority are separate concerns.

Applying that principle to operations gives us a workflow such as:

Telemetry, AI investigation, evidence and hypotheses, recommended action, risk-based approval, execution, and lastly verification

That doesn’t mean putting a human into every automation loop.

Low-risk, well-understood, reversible actions can increasingly become autonomous. Higher-risk and ambiguous decisions can preserve explicit human authority.

The goal isn’t less automation.

It’s to use AI to eliminate toil and reduce cognitive load while keeping accountability clear when the consequences matter.

Attendees will leave with:

* A framework for separating observation, interpretation, recommendation, decision, and action in AI-assisted operations.
* A practical way to determine human approval boundaries using uncertainty, reversibility, and blast radius.
* Examples of where LLMs already provide meaningful value in troubleshooting and incident response.
* A model for introducing increasingly autonomous systems without treating autonomy as an all-or-nothing decision.

AI should reduce cognitive load, but cannot remove accountability.
