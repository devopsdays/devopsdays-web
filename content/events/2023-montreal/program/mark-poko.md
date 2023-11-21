+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Where's your money going? The Beginners Guide To Measuring Kubernetes Costs"
Type = "talk"
Speakers = ["mark-poko"]
+++

Accurately attributing cloud costs has become a Sisyphean task many companies face. As both the cloud and your systems evolve, it's hard to figure out what exactly is eating up all that money, let alone optimize those costs. In this session, we'll take you over the journey that got us to trustworthy cost estimations at Grafana Labs.

You'll get to see how we started, with just the metrics collected from kube-state-metrics and stored within prometheus, and how and why we eventually moved on to the CNCF incubating project opencost, which allowed us to measure the costs of our Grafana Cloud platform across three major cloud service providers.

Measuring the trends in costs for k8s is easy to get started with. If you're operating a k8s cluster and collecting metrics from kube-state-metrics, you likely already collect enough metrics. Keeping an eye on this and being able to alert on cost changes will allow you to mitigate shock bills in cloud providers. Even using estimated costs can get within 90% accuracy!