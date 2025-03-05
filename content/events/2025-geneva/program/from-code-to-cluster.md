+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From Code to Cluster: Orchestrating 10,000+ Kubernetes deployments with 1 pipeline"
Type = "talk"
Speakers = ["andrada-raducanu"]
+++

There is a sea of tools one can use for the critical phase of Deployment during your SDLC. To keep our environment secure and reliable, ING chose to work with Kubernetes and Azure DevOps.

In this talk, we will share the success story of how 1200 in-house developed APIs reached 10 000+ Production deployments in half a year, using one single pipeline.

In order to stay in control, we use Open Policy Agent.

To ensure the reliability and the resilience of the APIs, we use tools like: QuotaAutoscaler (ING open source CRD) and HorizontalPodAustoscaler, native rollback mechanisms with Helm, automatic certificates using CertManager and Prometheus monitoring. 

The pipeline deploys code in Azure Kubernetes Service and on-prem Kubernetes clusters. This solution was built as a platform, designed to be agnostic to the target system, reducing the cognitive load on the teams and allowing them to focus on the application development. We call this The Kingsroad.