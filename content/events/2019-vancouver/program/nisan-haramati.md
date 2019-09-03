+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Resilience Engineering: Identifying Dependencies, and Common Mitigation Strategies"
Type = "talk"
Speakers = ["nisan-haramati"]
+++

Resilience engineering is one of those things we all want to do, but never quite find the time to practice. There are always fires to put out and new infrastructure to deploy.

This talk will cover the fundamentals required for applying resilience engineering principles in your day to day work. It will cover how to identify the system dependencies that affect component and system-level service quality, and then go over some of the mitigation strategies that you can employ to prevent and alleviate failures in your own environment, starting from the simplest and cheapest, and then increasing in terms time, cost, and knowledge requirements.

It will cover:

1. Dependency mapping: identifying the pathways through which service level degradation in one component can affect that of another (e.g. backpressure, partial outages, network connections, etc.)
2. Failure isolation: isolating components and eliminating failure cascades where possible.
3. Destructive testing and failure injection in order to learn about the failure mechanisms and behaviours of your system. This can be done in a separate “lab” environment or directly in a production system. The latter is often called Chaos Engineering.
4. End-to-end testing: conformance testing and verification for overall system behaviour and output under varying conditions and sequences of events.
5. System level fuzzing: applying the property-based method of input fuzzing to the system events dimension of the end-to-end tests in order to identify categories of system states that are more sensitive to failure and warrant more attention.
