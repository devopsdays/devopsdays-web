+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Bring Your Alerts"
Type = "talk"
Speakers = ["axel-kohler"]
youtube = ""
slideshare = ""
slides = ""
+++

We’re running multiple Kubernetes cluster, every with its own Prometheus instance. When more and more teams and services joined these clusters, it became cumbersome to manage Prometheus alert configuration for their services manually. So we’re using a sidecar container that watches ConfigMap changes across the cluster and dynamically add, modify or remove alerts in the Prometheus instance. In this talk it will be shown how to configure a Prometheus Helm release and how a ConfigMap has to look like to achieve the product team alert self-service.