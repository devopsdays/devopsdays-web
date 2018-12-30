+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Load Balancer: War Stories with HAProxy"
Type = "talk"
Speakers = ["geoff-ballinger"]
+++

The load balancer is often used to stitch the various software components that make up your application into a coherent whole, addressing concerns that spread seamlessly to cover both development and operations, and thus being a critical part of the system as a whole, and a fundamental element of your availability and scaling.

At deltaDNA we have used HAProxy over the past few years to manage both our high volume client APIs as they built past 10k hits/s as well as our web applications. HAProxy is a very capable piece of software but it makes some rather individual design choices that can be problematic once you pass a certain scale if you don't take them into account.

In this talk I will outline what the load balancer can do for you beyond the obvious, and how that can get you out of a hole late on a Sunday night. I will also share what we have learned about HAProxy, it's strengths and limitations, and specific examples of how it can be used to best advantage in systems like ours.
