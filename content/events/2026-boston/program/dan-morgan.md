---
title: "Two AI Reviewers Walk Into a Pull Request, and the Feedback Loop That Keeps AI From @$#%&Up Your Codebase"
Type: "talk"
Speakers: ["dan-morgan"]
---

Two AI reviewers walk into a pull request. One of them wrote a function that does five things, the other flags it, and a third model has to weigh in before anyone's allowed to merge. That's the setup, and it's also, more or less, the actual architecture: we built a PR review pipeline that uses two different AI model vendors, not two copies of the same model, to check each other's work, followed by a dedicated security pass from a third.

This talk covers how it's structured, what it catches, and what happened when we pointed the same scrutiny at the instructions themselves.

**What we'll cover:**

The pipeline. Three phases: parallel primary review from two heterogeneous models (Claude Sonnet, ChatGPT Codex), a cross-model verification phase where each checks the other's findings before anything moves forward, and a dedicated security pass (Claude Opus) against OWASP and STRIDE. A hard phase gate keeps security review from starting until verification is done.

**Why two vendors, not two instances.** A model reviewing its own output tends to approve it. Different training data and architecture across vendors is a real mitigation for that. We'll cover where it holds, and a subtle failure mode: if verification runs in the same session as the original findings, a model can anchor to its own earlier conclusions.

**Why code smell gets its own callout.** Models default to verbose. Whatever code already exists becomes context for the next feature the model writes, so bloated code teaches the model to keep writing bloated code. The smell tier of the pipeline exists to catch that early, before it compounds.

**Humans decide, and the loop closes.**Nothing auto-merges. A person with real context reads every finding before it ships. Whatever a human catches that the pipeline missed gets written back into the instructions, so it doesn't need catching again next sprint.

**The recursive part.** We ran this same scrutiny on the instruction files that define the pipeline. Some flagged gaps didn't survive contact with someone who knew the team's actual setup, which is exactly the failure mode this system exists to catch, just aimed at itself.

**Honest costs.** Three phases and two vendors isn't free. We'll talk latency, API cost, and where it's worth it versus where one good reviewer would've been faster.

**What you'll walk away with:** a concrete pattern for cross-model PR review you can adapt regardless of which model vendors you use, a clearer sense of where heterogeneous-model verification earns its keep versus where it's theater, working example instruction files (Python and JS/TS) you can start from, and a mental model for why keeping AI generated code terse is not just cleanliness, it's insurance against the next feature getting built on top of a mess.
