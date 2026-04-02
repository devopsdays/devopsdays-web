+++
City = "Zurich"
Year = "2026"
talk_date = "2026-05-06"
talk_start_time = "12:00"
talk_end_time = "12:30"
title = "Beyond SBOMs: The Future of Container Supply Chain Security"
type = "talk"
speakers = ["mohammad-ali-arabi"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

When a single phished NPM maintainer led to 18 compromised libraries—including Chalk and Debug, downloaded billions of times weekly—it proved one thing: SBOMs alone aren't enough.

In this talk, Docker Captain Mohammad-Ali A'râbi explores how modern supply-chain attacks unfold and how the next generation of tools—attestations, provenance, and signing—can prevent a repeat of the September 2025 NPM breach.

You'll learn how to build verifiable, trusted pipelines using Docker Scout, Syft, Cosign, and Rekor, and how to extend SBOMs with build-phase attestations.
The session combines deep technical demos with hard-won lessons from the largest NPM attack ever—and insights from Mohammad-Ali's book "Docker and Kubernetes Security"—turning supply-chain horror stories into actionable DevSecOps practices.

What you'll learn:

- 🧠 Understand how the 2025 NPM supply-chain attack happened—and why traditional SBOMs couldn't stop it.
- 📦 Pin & lock dependencies to prevent malicious updates from sneaking in.
- 🧱 Generate, sign, and verify attestations using Docker Scout + Cosign + Rekor.
- 🔒 Adopt zero-trust build pipelines with SLSA levels + OCI 1.1 referrers.
- 🧰 Defend proactively with seven practical strategies: block lifecycle scripts, use hardware keys, and continuously scan with Snyk / Trivy / Scout.
- 🚀 Turn compliance into confidence by making your entire container lifecycle verifiable.
