+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Your Supply Chain has an Identity Problem"
Type = "talk"
Speakers = ["daniel-maher"]
+++

This is a talk about three shifts every DevSecOps team needs to make: from asking whether a package is safe to asking what an identity is allowed to do; from trusting code at install time to verifying it continuously; and from leaning on manual review as the line of defense to building guardrails into the pipeline that scale with the work.

The first shift is about how attackers get in. The most damaging attacks of the last two years almost all began the same way—not by breaking code, but by compromising the people and credentials trusted to publish it. Interpreted (correctly) as an IAM problem, the solutions are familiar to any DevOps practitioner: phishing-resistant authentication, scoped and short-lived credentials, principle of least privilege, and well-handled secrets. It also explains why AI agents matter so much here, as autonomous coding agents tend to be the most over-privileged and under-governed identities in any organization.

The second shift follows from how fast a single compromise now spreads, and how well it can hide. The Shai-Hulud worms propagated through the registry on their own, and Sandworm went further, mutating on every machine it infected so that signature matching loses by design. Verifying trust continuously means provenance at build time and behavioral detection at runtime; in other words, judging code by what it is and what it does, not by whether it looks like something you've seen before. In the agent era this reaches the model itself: a prompt-injected tool description is just another piece of untrusted input flowing into something you trusted by default.

The third shift is about keeping pace without burning out. When half of all organizations run a dependency the same day it's released, no team can hand-review (or hand-wave) their way to safety. Human judgment stays in the loop where it counts, but it can't be the thing inspecting every change. Guardrails that live in the pipeline, such as policy-as-code, release-age cooldowns, and blast-radius limits, let a team move at machine speed without exhausting the people running it. This is where "sustainable" stops being a slogan: grant trust narrowly, verify it continuously, and revoke it quickly.

Everything in this talk is open-source and both vendor and ecosystem-neutral. Whether you write the pipelines or manage the folks who do, you'll leave with these lessons as a durable way to reason about supply-chain risk.
