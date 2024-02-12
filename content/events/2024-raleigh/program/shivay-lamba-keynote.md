+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Effective Observability for MLOps Pipelines at Scale"
Type = "talk"
Speakers = ["shivay-lamba"]
+++

As the world embraces AI and adopts machine learning, many companies and moving towards using models like the LLMs. Deployment and monitoring such large models are extremely important. As traditional DevOps Engineers, you might not be exposed to working with machine learning systems. This is where MLOps comes in. MLOps is widely talked about and used to make the practice of deploying, managing, and monitoring ML models in production easier. Monitoring ML training or evaluation jobs is obviously very important however it is more important to monitor once an ML model is deployed.

This talk first starts by giving a gentle introduction about how ML deployments should be monitored, briefly talking about edge cases in production, data drift, concept drift, model metrics as well as the standard system and resource metrics. We give the audience an overview of observability and monitoring in the context of MLOps. This monitoring could also provide valuable results in terms of whether a model should be retrained, if more data should be collected, if different kinds of data should be collected, and more.

We show how one can handle the very important task of monitoring and performing the aforementioned tasks in the context of MLOps with Prometheus. We also show how one could take their existing deployments and add the power of easy and useful monitoring with Prometheus. We will share how this has been accomplished at scale at our workspace including demos using Seldon, Flyte etc.
