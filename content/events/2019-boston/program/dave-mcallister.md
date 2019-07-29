---
title: "Seeing RED: Why multi-dimensional monitoring matters"
Type: "talk"
Speakers: ["dave-mcallister"]

---
RED (Rates, Errors, Duration) was a spinoff from Google’s Golden Signals designed for monitoring microservices. However, RED use has clearly demonstrated that the applicability is applicable to any services-based architecture.

With RED, unlike the modern belief in observability, your architecture is watched from aspects of multiple dimensions. You receive alerts and indications not just from anomalies, but also from headache alerts. By seeing multiple dimensions of concerns, be they failures in service or activity to close to the edge of capability, these combined monitors and deep-dive, focused access get you to your root cause faster, with less false positives and quicker resolution.

Duration speaks of time. In particular, time to send and receive a specific request. And both client-side and server-side are important in meeting your customers’ desires.

Often this is relegated to distributed request tracing. And while each individual trace is important, so is the sum of the latency experienced across the entire environment. A High Latency Trigger(HLT) in one spot can cause a cascading HLT across the entire system.

In today’s instant gratification world, slow response is bad. So you need to identify not only the headache (alert) but identify and narrow to the culprit as fast as possible.

Errors are just what it says, problems that cause an incorrect, incomplete or unexpected result. They are failures in the code, bugs that appear under production loads (or under peak loads). Errors require rapid response. They require point specific responses. And while errors can be measured as a metric, you will need to dive deep into the structure and get to your root cause as soon as possible. If your business is dependent on the system that failed, ASAP might not even be fast enough.

And BTW, errors can also result in signal anomalies in rate and duration.

Not responding to errors rapidly and specifically result in lost business, unhappy users and stressed DevOps/SRE teams.

Rate, or traffic, can be considered as the number of requests on the network and system. This is the communication pipeline for your apps and your enemy is peak load. While you could think of this as bandwidth, to quote John Mashey, “Bandwidth costs money”. Are you hitting peak loads that exceed your bandwidth?

Rate includes lots of items. High-level ones are like HTTP, SOAP, REST. But keep in mind that it’s not just the web, it’s things like middleware messaging/queuing, API calls. It can also be overhead of control structures like service meshes. Any environment that fails on peak traffic is a suspect for Rate monitoring

With rate breaches, you need to move quickly from the metric measurements to a specific cause, be they in your own services or external factors. And since loads may be temporal, you need to be able to dig into the potential causes after the fact. Just a metric isn’t enough, you’ll need detailed info as well.

With RED, while there can be many alerts, it follows that there are two major categories that apply broadly, anomaly alerts and headache alerts.

Rate is most often an anomaly alert. You’re alerting on something that has crossed a threshold, usually a percentage value. The risk here is that the alert doesn’t get processed in real time. Duration and metrics are most accurately retrieved via logs (after all, a distributed trace is really just a specialized log entry).

As a caveat, anomaly alerts are new, and often do not consider seasonality. They require aggregation, especially when going for the root cause. This is where visualization for humans is vital, as we are still pretty unmatched at pattern extrapolation.

Also, keep in mind that too low may be as indicative as too high. Low saturation at normal high volume times is a definite flag.

Duration crosses the streams, being both an anomaly alert and a headache alert. It’s worthwhile to keep an eye on the total duration/latency of a request as well as on crucial services. While it may be difficult, being able to see duration from the client through the app environment is incredibly useful.

Errors and to a point duration are both headache alerts. Something needs fixing NOW, so get it done. Here you need the alert as fast as possible. You need the information that shows where it occurred, when it occurred and what was going on. Again, log aggregation and threaded displays are vital; sometimes the thing that caused a failure isn’t the thing that failed.

So RED gives you the framework to build alerting, monitoring and analysis into a flexible structure to meet the emerging needs of services-based architectures as well as give you the capability to grow as your environment scales.

Come learn how to make RED something you want to see every day.
