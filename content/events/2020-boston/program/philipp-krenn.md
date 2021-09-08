---
title: "Observability is More than Logs, Metrics & Traces"
Type: "talk"
Speakers: ["philipp-krenn"]
---
You know the drill: DevOps is using tool(s) X. So obviously, observability can be solved by throwing some tools together as well; generally logs, metrics, and traces often called the trifecta of observability.

But observability is not a tool — it is a property of a system. Moving from many small blackboxes to a more holistic view of your system. It includes tools, but not exactly three distinct features (especially if your solution happens to support those). For example, if half your user base cannot access your service because of some bad DNS settings and external health checks are not part of your trifecta, you are none the wiser.

This is not (just) a rant, but a look at the actual value to be added and some approaches to it. Like turning your logs into richer events that align with your business. Which is not solved by fancy tools alone.
