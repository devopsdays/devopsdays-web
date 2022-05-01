+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Prod-like Integration Testing for Microservices"
Type = "talk"
Speakers = ["daniel-oh"]
+++

Integration testing is a new challenge for developers to validate functionalities, features, and business requirements in a local development environment as it works exactly the same as the production using databases and messaging brokers based on containers and Kubernetes. It can be also a big roadblock to accelerating the inner and outer loop development lifecycle. To solve this challenge, you might think of Testcontainers, a framework to provide common lightweight test services like databases that can run on a container engine. But, developers still need to inject particular code and configurations into applications for enabling Testcontainers. What if the Java framework offers an out-of-the-box feature that automatically starts containers for the integration tests and developers don't even need to configure anything since the container(e.g., Postgres, Kafka) is automatically wired to the cloud-native microservices. In this talk, we will explore Quarkus Dev Services for prod-like integration testing as well as live coding development while developers implement cloud-native microservices for PostgreSQL transactions and Kafka integration automatically with zero configurations.
