+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Container Security"
Type = "talk"
Speakers = ["michael-ducy"]
+++

In this workshop we'll cover how to implement runtime security for containerized environments using the open source project [Falco](https://falco.org). We'll cover the following:

* Learn how to create rules for an application. We'll take a containerized application and create Falco rules to detect abnormal behavior in the application. We'll profile an application's system calls, then use the profile to create application specific rules.

* Learn how to alert on Kubernetes audit events like deployment creation, kubectl exec, privileged container creation, and other interactions with the Kubernetes API.

* Learn how to leverage Serverless frameworks to react to security incidents. Delete offending pods, prevent nodes from being scheduled, and alert to Slack.


*Prerequisites:*

* Comfort using a command line and a text editor
* Familiarity with Docker & Linux
* A laptop with a web browser and SSH client installed
