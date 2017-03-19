+++
City = "Zurich"
Year = "2017"
date = "2017-02-27T15:08:14+01:00"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "What Devs Should Consider, When Coding Applications"
type = "talk"
speakers = ["thomas-philipona"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

The third generation of OpenShift is built around applications running in Docker containers
and makes use of Kubernetes when it comes to orchestration and management. Accurately
exposing the underlying Docker concepts and, hence, facilitating the composition of
applications, OpenShift v3 opens up new prospects for both operations and development.

First of all, we want to discuss challenges of Docker in a production environment and
brush-up how deployment and network configuration works.

Secondly, we show how OpenShift v3 integrates with Docker and how it eases much of the
burden developers used to struggle with in former PaaS environments. These alleviations
allow developers to turn toward higher-level tasks like deployment automation or container
building.

Next, we examine different approaches to implement Continuous Delivery and showcase our
CI/CD environment at Puzzle ITC with a particular focus on Jenkins, database migrations,
and integration testing.

Finally, we explain what it actually means to develop cloud-ready applications. There are
some rules and best practices to be followed in order for applications to leverage the
PaaS layer. One of the perspectives of the presentation is to cause awareness for this
ruleset and to demonstrate how to avoid the most common design pitfalls which will imply
collisions with PaaS concepts. We are going to talk about persistent storage, environment
configuration, logging, monitoring, and some other aspects of a Twelve-Factor app.
