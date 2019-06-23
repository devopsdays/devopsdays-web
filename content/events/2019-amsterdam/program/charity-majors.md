+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Observability for emerging infra: what got you here won't get you there"
Type = "talk"
Speakers = ["charity-majors"]
aliases = ["/events/2019-amsterdam/program/charity-majors/"]
youtube = ""
slideshare = ""
slides = ""
+++
Distributed systems, microservices, containers and schedulers, polyglot persistence .. modern infrastructure patterns are fluid and dynamic, chaotic and transient. So why are we still using LAMP-stack era tools to debug and monitor them? We'll cover some of the many shortcomings of traditional metrics and logs (and APM tools backed by metrics or logs), and show how complexity is their kryptonite.

So how do we handle the coming complexity Armageddon? It starts with a more modern approaches to observability, such as client-side structured data and event-driven debugging, distributed tracing, and more; no matter how many tags you add to a metric store, it still can't tell a story like events can. It also means shifting perspective away from "monitoring" and to "instrumentation".

Most problems are transient or self-healing, and you cannot possibly alert on (or even predict) the long tail of possible partial failures. So you need to turn finding arbitrarily complex causes into a support problem, not an engineering problem. How? Well ... that's the fun part.
