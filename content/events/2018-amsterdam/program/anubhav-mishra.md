+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Nomad hands-on"
Type = "talk"
Speakers = ["anubhav-mishra"]
aliases = ["/events/2018-amsterdam/program/anubhav-mishra/"]
youtube = ""
slideshare = ""
slides = ""
+++

Docker and rkt have made it really easy to package and ship applications but running them at scale, remains a challenge. Also, not all organizations have the bandwidth to containerize their workloads. Nomad, a single binary cluster scheduler, can be used to build a multi region, self-healing production environment that runs a diverse set of workloads including non-containerized applications.

Anubhav Mishra offers a hands-on workshop on Nomad, a single binary cluster scheduler, to build a multi-region, self-healing production environment from scratch. We will also explore use cases and problems solved by using cluster schedulers and show why Nomad is designed with operational simplicity and heterogeneous workloads as its core design tenets. The attendees will get experience in writing and submitting job specifications, interacting with the API, and deployment strategies.

This session will cover the following topics:

* Overview and Architecture
* Installing and Configuring Nomad
* Creating, Running, and Inspecting Jobs
* Service Registration
* Interacting via the HTTP API
* Advanced Job Strategies (rolling updates, blue-green)
* Failure simulation

In the second part of this session, Anubhav Mishra will spend time destructively testing applications scheduled in Nomad against different types of failures like process failure, machine failure, network connectivity issues, loss of quorum and other situations that are likely to happen in a production environment.
