+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Conftest: Expressing and Enforcing Policy for Configuration Files"
type = "talk"
speakers = ["anthony-critelli"]
sharing_image = "anthony-critelli-card.png"
+++

We're surrounded by configuration formats: Dockerfiles, HCL, JSON, XML, YAML, and more. Every tool also seems to have its own test harness for performing static analysis. The work involved in writing tests for config management results in poorly or untested configs, which can introduce vulnerabilities and misconfigurations. How can we encourage testing and policy enforcement within our configuration and config management systems while simultaneously easing the cognitive burden involved in writing tests?

Those who are familiar with the Open Policy Agent probably think of it as a Kubernetes Admission Controller. However, its distinctive Rego policy language can be used for policy enforcement beyond Kubernetes manifests. The Conftest project provides tooling that allows you to test your configuration against OPA policies.

In this talk, I'll introduce you to Conftest and show you how it can be used to test structured config files. Those experienced with OPA and Rego will come away with an understanding of how to use Rego to test their config files. Beginners will be introduced to the fundamentals of the language. All participants will be given an idea of how they can work static analysis of configuration into their pipelines and workflows using a standard policy language.