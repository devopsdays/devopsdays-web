+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "OpenTelemetry in production for a year plus: the good the bad the ugly"
Type = "talk"
Speakers = ["lorenzo-turrino"]
+++

When implementing the telemetry pipeline for my current company at the start of last year, I opted to use OpenTelemetry as our core tech for instrumentation and shipping, to a Prometheus (+Grafana Stack) backend.

This stack has been serving our company for a while now, and I'd like to spend 5 minutes giving a quick overview on how it has performed for us so far (spoilers: mostly good) and a couple of gotchas experience has taught me.
