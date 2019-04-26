+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Centralized Logging Patterns"
Type = "talk"
Speakers = ["philipp-krenn"]
aliases = ["/events/2019-amsterdam/program/philipp-krenn/"]
youtube = ""
slideshare = ""
slides = ""
+++
Most organizations feel the need to centralize their logs — once you have more than a couple of servers or containers, SSH and tail will not serve you well any more. However, the common question or struggle is how to achieve that.

This talk presents multiple approaches and patterns with their advantages and disadvantages, so you can pick the one that fits your organization best:

* Parse: Take the log files of your applications and extract the relevant pieces of information.
* Send: Add a log appender to send out your events directly without persisting them to a log file.
* Structure: Write your events in a structured file, which you can then centralize.
* Containerize: Keep track of short lived containers and configure their logging correctly.
* Orchestrate: Stay on top of your logs even when services are short lived and dynamically allocated on Kubernetes.

Each pattern has its own lab demo with the open source Elastic Stack (previously called ELK Stack), so you can easily try out the different approaches in the workshop. Though the general patterns are applicable with any centralized logging system.
