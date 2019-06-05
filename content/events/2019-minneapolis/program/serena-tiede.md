+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Timber! Security Logging at UnitedHealth Group"
Type = "talk"
Speakers = ["serena-tiede"]
+++

Logs: they’re not interesting beyond debugging and service monitoring, until you’ve been breached and then everyone wants them. As your security people sift through the logs you find out that the logs aren’t standardized, and the logs on your compromised server have been erased.

Now imagine a different scenario where all the logs are normalized, as most SIEM (Security Incident and Event Management) tools cannot parse custom application logs super well. And for incident response, it's key to get as much security data as possible off a compromised endpoint and into a central repository. All it takes is a schema, kafka, and several very busy people. The key takeaways are why you need to normalize your logs, why you need to stream logs, and how to run a large platform with a small team.
