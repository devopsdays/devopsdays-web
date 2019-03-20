+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Grafana Loki: Log Aggregation for Incident Investigations"
Type = "talk"
Speakers = ["callum-styan"]
+++

In this talk we’ll introduce Grafana Loki: a new take on log aggregation. We, as developers and operators of “cloud-native” applications wanted a simpler, ad-hoc investigation focused log aggregation tool. While full text indexing can be useful in some use cases, when troubleshooting issues across services we felt simpler indexing and grep-esque searching would be of more use.

Designed specifically with Kubernetes pod logs in mind, Grafana Loki is itself a Cloud Native application: microservice based, horizontally scalable, and multi-tenant.  However, thanks to our reuse of the Prometheus Service Discovery libraries, Loki can gather metadata (labels) from various Service Discovery systems. With the addition of this metadata to your logs, correlation between your Prometheus metrics and Loki logs is simple.

Loki is also designed to be operationally simple and cost effective. We are only storing your compressed, unstructured logs, and only indexing metadata. It also scales down, and offers a simple single-process, single-node instance to get started with.
