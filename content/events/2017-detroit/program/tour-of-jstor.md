+++
Talk_date = "2017-09-27"
Talk_start_time = ""
Talk_end_time = ""
Title = "A tour of the JSTOR micro-services analytics data pipeline"
Type = "talk"
Speakers = ["archie-cowan"]
+++
Many organizations use data demonstrate value to customers. Like many organizations, ITHAKA runs its products on a micro-services architecture and also leverages usage data collected by our micro-services to demonstrate value. With hundreds of services that make up ITHAKA's products, this presents some interesting technical challenges to make an observable, fault tolerant, scalable system to collect usage events and aggregate them into our data warehouse. 

In this session I will share the components of our data pipeline built around Apache Kafka and Apache Spark, how it has scaled with our deployment of hundreds of micro-services, how we manage the quality of our event data, and how we monitor such a distributed set of systems. 

