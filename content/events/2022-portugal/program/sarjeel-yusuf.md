+++
Talk_date = "2022-09-26"
Talk_start_time = "15:20"
Talk_end_time = "15:25"
Title = "High Availability and Resilient Applications Through a Serverless Set-up in 5 Minutes"
Type = "talk"
Speakers = ["sarjeel-yusuf"]
+++

When considering availability and resiliency, we can aim for a robust architecture. However, everything fails all the time, and we must therefore also rely on processes that we can fall back on when things go wrong. Automating these processes is an additional benefit in an environment where you built it you run it.

Serverless is perfect for boosting DevOps adoption especially by providing glue services between the various parts of the DevOps cycle. This is because of three major characteristics of serverless:

- Pay-as-you-go
- Fully managed
- Auto-scalability

By leveraging these properties of serverless services, we can thus achieve various processes and this talk will highlight 5 of them as listed below:

- System tests through synthetic FaaS services (how it is done in Atlassian as an example)
- Monitoring through monitoring FaaS services (how it is done in Atlassian as an example)
- Incident mitigation through FaaS and serverless event bus services such as AWS Eventbridge and Azure Event Grid (theoretical example as use-case)
- Fail Management through serverless CaaS services (how it is done in Datadog as an example)
- Blocking IP addresses upon security threats with relevant back-off periods through AWS Lambda (performed by Datadog customer as an example)