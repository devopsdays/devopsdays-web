+++
description = ""
title = "Packet loss triangulation with a Network Fault Finding System"
type = "new-talk"
speakers = [
        "jose-leitao",
]
+++
Most network monitoring relies upon the network devices themselves providing the signal that they are healthy or unhealthy via syslog messages, SNMP, telemetry or custom APIs.

In large scale networks, we can’t trust the network devices to accurately report health in all the possible failure cases that may exist. In addition to standard monitoring tools, we also actively probe our networks with test traffic to ensure the platform is behaving as we expect. With active monitoring, we can find the network elements that don’t know they are dropping/mangling packets even when they exist several layers deep inside the network.

During the presentation, we will show how we built a sample open source system that achieves the same result using open source tools and perform a live demo with a lab network; introducing packet loss and showing how the system can identify where the loss is occurring in real time.