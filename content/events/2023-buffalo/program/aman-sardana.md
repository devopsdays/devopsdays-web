+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Building Continuously Available Critical Systems"
Type = "talk"
Speakers = ["aman-sardana"]
+++

Have you ever wondered what it takes to build a highly resilient distributed caching platform for critical real-time payment systems? Join us as we share our journey of building a highly available and fault-tolerant caching solution while leveraging automation to achieve a faster MTTR.

Payment systems that support real-time transaction processing are expected to be available and highly responsive 24/7/365. These systems must be fault-tolerant and highly resilient to any failures that might happen during payment transaction processing.
Building a low-latency payment system that spans multiple geographic locations requires a distributed caching solution for low latency and high-throughput data access. While building a real-time transaction processing system at Discover - one that is continuously available and can process thousands of transactions per second with a sub-second response time - we decided to introduce distributed caching technology into our architecture to minimize the latency and to replicate the data across multiple data centers. This presented numerous challenges:
• How to run Active-Active cache clusters in multiple deployment regions with high-availability
• How to auto-heal cache cluster failures due to network partitioning or disaster
• How to automatically failover client applications in response to failures
• How to automatically recover failed clusters to reduce MTTR
• How to ensure data consistency after the cluster is recovered
• How to implement a real-time monitoring and alerting solution for client and cluster connectivity

In this talk, we will take you through our journey of how we built a distributed caching solution to solve the challenges we faced.
• Configuration-driven and thread-safe smart client solution that can intelligently detect failures
• Ability for the client application to failover if the error rate is above a certain threshold
• Automation to recover failed cluster and failback client connections after the cluster is recovered
• Workflow automation for data consistency after the cluster is recovered
• Real-time streaming of client connectivity metrics
• Observability solution to simplify operational support