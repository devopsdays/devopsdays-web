+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Diving through RCAs: a quest for reliability"
Type = "talk"
Speakers = ["virginia-diana-todea"]
+++


In a meeting full of SREs and Incident Commanders you can almost hear the muffled cries: Why is it so slow? Where is the data gone? What happened to our deployments? Is this seriously not encrypted? Well, it’s because … you see … we forgot to set up backups. We forgot to set up CPU hard limits. We didn’t test it before. We should have gone canary.

This talk explores the core lessons from high severity incidents where all customers from a given region and more than 1k nodes were affected. We will start by analysing the customer impact and the root causes. Then we will move on to examine the automation measures we implemented, the alerting tools we had to invent and the capacity issues we had to overcome. By the end of this talk, we will understand why continuously improving the system design is the golden key of reliability.