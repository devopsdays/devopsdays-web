+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Around & After Kubernetes: The Principles and Ideas that Guide Us"
Type = "talk"
Speakers = ["kingori-maina"]
Speakerdeck = "https://speakerdeck.com/itskingori/around-and-after-kubernetes-the-principles-and-ideas-that-guide-us"
Youtube = "sHZVD0fmVWg"
+++

We made the decision in late 2015 to move all our applications to containerised environments managed by Kubernetes. It took roughly 3 years to complete that migration. During that journey we’ve learnt a lot about containerisation, distributed systems, complicated migrations and automation of systems managing over 70 developers. We think our migration has been a success and we’re keen to share a little a bit about what we know.

This talk is about sharing some of the key principles and ideas that guide us. It will touch lightly on Kubernetes from a technical point of view and focus on sharing key ideas. This is so that it may be broadly applicable even to teams that are not on Kubernetes, as the focus will be to demonstrate how each of these principles and ideas (listed below) have been applied in our context. These are:

1. Developer guides over enforcers
2. Automate devops out of the developers way
3. Intentional & proactive knowledge transfer to developers
4. World-class tooling support for developers to move faster
5. Self-documenting tooling for self-help
6. Pragmatic, iterative and continuous security
7. Uninterrupted business continuity and velocity despite changes/implementation/migration i.e. changing an engine mid-air.
8. Developer empathy to better fulfil developer needs
9. Always use the best tool for the job even when not familiar
10. Be responsive, accessible and approachable
11. A cockpit approach to infrastructure changes
12. Long-term vision & foundation

We also demo a tool that we built called “Port Control” that kind of encompasses these principles. We go through what it is, why we decided to write it instead of taking up other similar tools e.g. Spinnaker etc. and how it plugs into our current infrastructure.
