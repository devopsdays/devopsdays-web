+++
Title = "Workshop: Centralized Logging Patterns"
Type = "talk"
Speakers = ["steffen-siering"]
+++

This talk presents multiple approaches and patterns with their advantages and disadvantages, so you can pick the one that fits your organization best:

* Parse: Take the log files of your applications and extract the relevant pieces of information.
* Send: Add a log appender to send out your events directly without persisting them to a log file.
* Structure: Write your events in a structured file, which you can then centralize.
* Containerize: Keep track of short lived containers and configure their logging correctly.
* Orchestrate: Stay on top of your logs even when services are short lived and dynamically allocated on Kubernetes.

Each pattern has its own demo, so you can easily try out the different approaches in your environment.
