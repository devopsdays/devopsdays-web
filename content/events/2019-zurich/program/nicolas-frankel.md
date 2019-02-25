+++
City = "Zurich"
Year = "2019"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Battle of the Circuit Breaker: Hystrix vs Istio"
type = "talk"
speakers = ["nicolas-frankel"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

Kubernetes in general, and Istio in particular, have changed a lot the way we look at
Ops-related constraints: monitoring, load-balancing, health checks, etc. Before those
products became available, there were already available solutions to handle those
constraints.

Among them is Hystrix, a Java library provided by Netflix. From the site: “Hystrix is a
latency and fault tolerance library designed to isolate points of access to remote
systems, services and 3rd party libraries, stop cascading failure and enable resilience in
complex distributed systems where failure is inevitable.” In particular, Hystrix provides
an implementation of the Circuit Breaker pattern, which prevents a network or service
failure from cascading to other services. But now Istio also provides the same capability.

In this talk, we will have a look at how Istio and Hystrix implement the Circuit Breaker
pattern, and what pros/cons each of them has.

After this talk, you’ll be able to decide which one is the best fit in your context.
