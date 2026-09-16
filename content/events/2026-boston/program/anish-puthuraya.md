---
title: "We Gave the Agent Production Credentials"
Type: "talk"
Speakers: ["anish-puthuraya"]
---

Every talk about a risky agent ends the same way. Put it in a container. Give it a scratch branch. Let it break things where breaking things is free.

That answer was not on offer to us. Our agent works on the live data platform behind more than 150 hotels, the one operators open every morning to read their numbers. It can query the warehouse, author a notebook, run a pipeline, open a ticket, and change a production table. We gave it all of that, then spent longer on the brakes than on the capability. The brakes had to be permissions and process, because walls were never available.

What the session covers:

Passwordless identity. A service principal holds viewer rights and its token is injected at connect time, so no secret sits in a connection string. Continuous integration runs as its own separate read-only identity.

Four access modes that share no code. Metadata harvest never reads a row, by structure rather than by policy. Diagnostic read is select only, one statement, audited. Write goes through a single script. Curated read sees outputs only. Then the argument for why: one validator with a mode flag is simpler, and it is exactly how a read-only path quietly acquires write access.

The write path. Every write dry runs inside a transaction and rolls back until a human types confirm. The apply script is deliberately kept off the tool allow list so the permission prompt fires every time. It is annoying on purpose, and the annoying version is the one that survives a deadline.

The failures that bought the rails. Migrations reached one environment and not the others, took production down, and went unnoticed for seven days.

What you leave with: a design you can copy, an argument for why the mode flag is the trap, and the rule I would defend hardest. No unattended run may ever write.
