+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From Alert to Agent: Powering GenAI Incident Analysis with OpenTelemetry"
Type = "talk"
Speakers = ["chaitanya-anne"]
+++

At 2 AM, a critical production alert fires. Engineers wake up to dashboards, metrics, traces and logs scattered across systems, trying to answer one question: what actually broke? The investigation is slow, manual, and stressful, especially across complex cloud and on-prem environments.

Generative AI promises to help accelerate incident response, but in practice it often struggles during real outages because the telemetry it receives is incomplete, noisy, or unstructured. The real bottleneck is not the model - it’s the lack of clean, high-fidelity operational context.

In this Ignite talk, I’ll show how OpenTelemetry can serve as the backbone for AI-assisted incident analysis. By deploying a Kubernetes-native OpenTelemetry gateway and extending instrumentation across cloud and on-prem environments, teams can unify logs, metrics, and traces into a consistent telemetry pipeline.

We’ll then explore how this telemetry can be transformed into structured, queryable context that AI agents can reason over during live incidents. Using tool-calling patterns, these agents can safely interact with systems like Prometheus and centralized logging platforms to correlate signals, narrow down likely root causes, and speed up investigation.

The goal is not bigger models -> it’s better signals, better structure, and safe, deterministic access to operational data.

Key Takeaways

* Build an OpenTelemetry-based architecture that unifies observability across cloud and on-prem environments.
* Transform raw telemetry into structured context that improves AI-assisted incident analysis.
* Use tool-calling agents to safely query metrics and logs for faster root-cause investigation.
