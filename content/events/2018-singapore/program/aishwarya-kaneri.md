+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "InfluxDB downsampling - a DevOps tale"
Type = "talk"
Speakers = ["aishwarya-kaneri","anugrah-s"]
+++

At Go-Jek (a technology startup that specialises in ride-hailing, logistics and digital payments in Indonesia), we use InfluxDB for storing system, application and business metrics for monitoring and alerting, with 55,153 points per second being written into InfluxDB instance during peak time. Due to this we frequently faced the issue of high memory and disk space utilization. Instead of scaling the InfluxDB cluster horizontally, we solved the disk space problem of InfluxDB by downsampling our metrics data.

This talk is on how we implemented the solution of data downsampling in InfluxDB with Grafana as our dashboard for monitoring and alerting and how this saved us from downtimes, machine cost and burning the midnight oil due to pagers.

This talk is also about how we automated this solution using chef for all the InfluxDB instances along with Grafana at Go-Jek so that our effort could be replicated.

{{< event_link page="program" text="View full program" >}}
