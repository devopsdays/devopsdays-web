+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
Title = "Workshop: ClickHouse as a High-Performance Monitoring System, from zero to hero"
Type = "talk"
Speakers = ["jason-wong"]
youtube = ""
speakerdeck = ""
sharing_image = "workshop-clickhouse.jpg"
+++

### Workshop

#### Objective:

In this workshop, we’ll explore how ClickHouse, the fastest OLAP database, can be leveraged as a powerful monitoring system. 

#### Target Audience


This workshop will give attendees practical knowledge on how to leverage ClickHouse for real-time monitoring / observability, making it highly relevant for DevOps engineers and SREs.

#### Workshop Overview

**Why Me? ** Being a senior support engineer in ClickHouse, I have lots of hands-on experience working with ClickHouse for monitoring and observability use cases as well as many stories and pitfalls to share with the audience.

ClickHouse is gaining traction as a high-performance OLAP database, but its potential as a monitoring system is still under estimated. 

Participants will go through a hands-on journey covering: 
- Data modeling, ingestion, and querying - understanding how to structure, store, and retrieve monitoring data efficiently. 
- An introduction to data-driven queries – optimizing query performance based on real-world monitoring use cases. 
- ClickHouse fundamentals – a primer on its key features and why it excels in high-speed analytics. 
- Bonus ! Charting and visualization on data

#### Workshop Agenda (90 minutes):

1. (10min) **Introduction** - Overview of ClickHouse’s role in observability and AI observability 
2. (15min) **Log ingestion setup** - Hands-on: Sending logs to ClickHouse (python client libraries) 
3. (15min) **Querying Logs for Patterns** - Hands-on: ClickHouse SQL queries for log insights and data transformation using Materialized view 
4. (20min) **AI-Based Anomaly Detection** - Hands-on: Training a simple ML model on log data (Python client libraries) 
5. (20min) **Automated Alerting with AI** - Hands-on: Using AI to trigger alerts (Grafana) 
6. (10min) **Q&A + Wrap-up**

#### Key Takeaways

This session is ideal for developers and DevOps engineers looking to build scalable, real-time monitoring solutions with ClickHouse

**Benefits for  Developers**, especially those working on data-intensive applications, AI/ML pipelines, or real-time analytics can leverage ClickHouse for its performance and flexibility. Here are three key benefits:
* Lightning-Fast Query Performance for Real-Time Analytics  
* Rich SQL Support for Familiar Development 
* Support for AI and ML Workflows (Feature Engineering and Vector Search) 
Benefits for Ops Teams

**Benefits for Operations Teams**, responsible for managing infrastructure, ensuring reliability, and optimizing performance (key concerns in DevOps practices), find ClickHouse valuable for its scalability and operational simplicity. Here are three benefits:

* Linear Scalability and Hardware Efficiency  
* High Reliability with Multi-Master Replication  
* Simplified Operations with Good Observability  

#### Prerequisites for Participants
* Basic understanding of containers and docker experience
* Basic SQL knowledge
* A laptop with your favourite IDE, Docker and the docker-compose CLI installed.
* A GitHub account
* Internet is required as we would be using the cloud-based ClickHouse instance

#### Useful Links
1. [ClickHouse Cloud Quick Start](https://clickhouse.com/docs/cloud/get-started/cloud-quick-start)