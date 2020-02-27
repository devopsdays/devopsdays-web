+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From New Cluster to Insight: Deploying Monitoring and Logging to Kubernetes"
Type = "talk"
Speakers = ["eddie-zaneski"]
+++

Day 2 Kubernetes is where things start to get tricky and observability is extremely important to anyone building things outside of localhost. Teams spend many sprints researching and comparing different monitoring and logging tools. The goal here is demystification to help those folks reach a decision quicker that they feel more confident in. By showcasing an entire insight stack deployed into a fresh cluster we can help jumpstart their journey.

The tools chosen—Prometheus (Prometheus Operator, Node Exporter), Grafana, and Loki (https://grafana.com/loki)—are all widely adopted and powerful yet simple. Helm simplifies their deployment and shortens the time needed to go live.

Brief outline:

* Introduction to Kubernetes
  * Spinning up a cluster somewhere
* Deploy small demo app that will generate some logs and metrics
* Introduction to Prometheus
  * Quick overview of Prometheus architecture
* Quick overview of Helm, package manager for Kubernetes
* Deploying Prometheus, Grafana, and Loki via Helm
* Dive into dashboards and logs to find a bug with the demo app
* Summary and resources for future
* Q&A
