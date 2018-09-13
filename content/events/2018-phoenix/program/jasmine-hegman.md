+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Using Prometheus and Grafana together for Effective Service Dashboards"
Type = "talk"
Speakers = ["jasmine-hegman"]
+++

Prometheus is a powerful metrics collection and alerting system, and Grafana is a powerful graphing and dashboarding application (which comes with the capability of Alerts on its own as well). While there is a vibrant community around both tools providing both exporters and many Dashboards to help get one started, for a given use case there is likely some work that is needed to be done to customize things further. This may range from needing to update an aging dashboard by renaming variables to match what is offered in a current version of the software than from when the Dashboard was made, to changing or defining thresholds on charts and alerts to match your system or constraints, all the way to desiring to instrument your applications with custom metrics and custom charts.

A constant is the need to determine if there is a problem or not, and where it is happening at, and how things are changing.

In this talk I will demonstrate what a potential end-state developer-oriented Service Dashboard can look like and discuss what it took to get there. We will discuss some of the trade-offs involved, such as the merits between which system to utilize for Alerts, and go over some ways to integrate lesser-known features to make dashboard users and alert responders have an easier time getting to what they need to.

We will cover a lot, but do not worry. If you are new to the technologies, this can help give you a North Star to work towards. If you are already familiar with the technologies, hopefully this can give you some ideas on how to squeeze more out of them. Most of the Grafana techniques apply to the other Data Sources Grafana works with, and some examples using ElasticSearch will be covered, but the focus will primarily be on Prometheus with Grafana.
