+++
Title = "Kick Your Security Up a Notch with Custom Queries"
Type = "talk"
Speakers = ["gabriel-liechtman-manor"]
+++

Static analysis is a great tool that enable developers to create rules for their code base but the native rules, sometime just make extra noise and false alarms. We will demo how to create custom queries this with the open source tool KICS, but it is also applicable to other excellent SA tools.

Static analysis is a great tool that enable developers to create rules for their code base, and Kics is an open source library that include 1500 checkers for infrastructure as code. While most programmers use pre-built sets of rules baked into their static analysis tools of choice, these can also be adapted to custom needs.

Today’s tools are highly evolved and make it possible to avoid static code and even to run static analysis checks through the development and CI cycles, but they are even more powerful and few developers take advantage of their many advanced features. With KICS it’s quite easy to create custom checkers that include anything from the extension of rules, such as maintaining naming convention for all public S3 buckets and alerting when these guidelines are not applied, avoiding security configuration issues, as well as creating new rules to avoid anti-patterns discovered in the engineering organization.

Creating these custom rules is quite easy, and can proactively help your developers write better code in their native IDEs, protect IaC repos through custom enforcement on repos and config files, and avoid common misconfigurations for cloud native stacks. We will demo all this with the open source tool KICS, but it is also applicable to other excellent static analysis tools available today.