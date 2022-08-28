+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Context propagation in OpenTelemetry: Beyond “Hello World” examples"
Type = "talk"
Speakers = ["natasha-chernyavsky"]
+++

In today’s world, Distributed Tracing is known to take observability to the next level, and OpenTelemetry, the second most active open source project in the CNCF after K8s, provides a realization of it through (almost) seamless integration. However, successfully integrating it into one's environment is not as easy as it sounds and many hit a brick wall when the simple “Getting Started” instructions fail them and their traces break mid-flow.

In this talk, I’ll explain about context propagation, a key concept in Distributed Tracing, why it can be tricky to implement, and give some real-world examples of how it can be achieved. I hope you’ll be able to easily identify where context breaks in your system and encourage you to get creative with propagating context, so that you can, too, benefit from the advantages distributed tracing offers.
