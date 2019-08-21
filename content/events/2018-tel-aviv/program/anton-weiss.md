+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Introduction to Monitoring and Instrumentation with Prometheus"
Type = "talk"
Speakers = ["anton-weiss"]
+++

### Intro:

Monitoring has always been vitally important to ensure the health and service continuity of
computerized information systems. The onslaught of cloud-native computing paradigms such as
containerization and microservices has further emphasized its importance, Moreover - modern
scale and fluidity of IT systems has made traditional monitoring approaches and systems
irrelevant.

Prometheus is an open source monitoring system for this new brave world. It aims to provide an
end-to-end solution for instrumenting your cloud-native applications and infrastructure, gathering
the data and translating it into actionable operational metrics.

In the workshop we’ll look into modern approaches to monitoring and instrumentation and get
our hands dirty running and configuring a Prometheus instance, instrumenting an application
and writing basic PromQL queries for data collection and analysis.

Target Audience:

Software development and operation professionals interested in modern monitoring and
instrumentation approaches.

Prerequisites:

Basic knowledge of Linux command-line and shell scripting. Basic understanding of web
application development, preferably in Python. Experience with Docker is helpful but not
required.

Required Equipment:

Each participant will need a laptop with a browser and an internet connection.

### Outline:

● Intro:

○ The Short History of Monitoring

○ Modern Monitoring Challenges and Approaches

○ Pull-based vs. push-based systems

○ Defining code instrumentation.

● Prometheus

○ How Prometheus is different.

○ Prometheus architecture

○ Prometheus client libraries

■ Metric types

○ Prometheus Query Language - the basics

● Hands-on:

○ Installing and running Prometheus

○ Defining targets and instances

○ Monitoring system metrics with node exporter

○ Instrumenting a Flask app with python client library

○ Running basic queries

○ Integrating with Grafana

○ Setting up alerts

### virtual lab environments for our workshop will be sponsored by https://strigo.io/