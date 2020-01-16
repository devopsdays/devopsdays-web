+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Reliability Scoring: A 3-Part Formula for Promoting Reliable Code"
Type = "talk"
Speakers = ["chen-harel"]
+++
The expression “separate the signal from the noise” comes up early and often in monitoring, but when our systems continue to get louder and louder – more errors, more alerts, more logs to sift through – finding the one anomaly that actually matters to the reliability of your application can be like finding a needle in a stack of needles.

This was a problem my team encountered when monitoring our own systems. We were capturing tons of data about billions of events happening every day, without a quantifiable way of knowing what to fix first and how reliable our releases and applications actually were. So our R&D team set out to devise a formula for not only clearly defining what constitutes an anomaly in our code, but also for helping to prioritize the issues that actually matter and actually blocking them from making it to production in the first place.

This session will walk attendees through our open source reliability scoring system in Grafana and a variety of CI/CD tools that provides DevOps teams with a formulaic approach to prioritizing anomalies and understanding the stability of their releases – before they go to production.

The formula scores releases for stability and safety based on if it: – Introduces new errors – Makes existing errors happen at a higher rate (i.e. rate increase) – Introduces slowdowns into the environment

The talk will walk through how to follow the below process and will include an example of the process being applied in practice: – Detect all errors and slowdowns – Classify each event – Prioritize by severity – Score the release – Block release – Visualize the data
