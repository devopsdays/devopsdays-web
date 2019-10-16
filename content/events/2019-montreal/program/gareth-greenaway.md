+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Dr SaltStack: or How I Stopped Worrying And Replaced All The Crons"
Type = "talk"
Speakers = ["gareth-greenaway"]
+++

This talk will demonstrate how the scheduling system in SaltStack can be used to replace Cron and fulfill the requirements of a modern scheduling system allowing jobs to be scheduled across servers, quickly moved from one server to another, and easily report on the status of a scheduled job.

Cron, a popular tool for scheduling jobs, has been used by millions of people on millions of servers around the world for several years. A servers become less like pets and more like cattle, jobs can no longer be tied to a specific server and a scheduling system must be flexible to allow jobs to easily be scheduled across multiple servers, quickly moved from one server to another, and easily report on the status of a scheduled job.

Salt Stack, is at it’s heart, a remote execution system which also does configuration management very well. This presentation will demonstrate how Salt can be used to replace Cron for command scheduling and fulfill these modern requirements.

Talk will include:

* A brief introduction to Salt Stack
* Examples of how to schedule jobs using Salt Stack.
* Using the Salt State system to scheduling jobs with dependencies.
* Using Salt Returners to receive notifications on job status.
* With Salt’s remote execution modules, how to centrally manage jobs across many servers.
