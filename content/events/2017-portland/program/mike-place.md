+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Event Driven Infrastructure"
Type = "talk"
Speakers = ["mike-place"]
+++


As we move firmly into the era of highly-distributed systems with very
large numbers of systems to manage, new questions about how to manage the
full lifecycle of an application stack healthy and performant. In order to
do so, automation systems need to themselves adapt so that they can be
reactive to changes in the system in near real-time.

In my work at SaltStack, one key response to this need is the concept of
event-driven automation. 

But what do we really mean when we talk about event-driven? What's an
event and what do we do with them? What is the role of configuration
management in an event-driven infrastructure?

In this talk, we'll discuss the origins of an event-driven infrastructure
approach, from its origins in the much-maligned Enterprise Service Bus to
event-driven programming paradigms that spawned it.

After describing the fundamental componenents of any event-driven
infrastructure, we'll actually walk through a very basic proof of concept
using ZeroMQ and a little bit of Python. Finally, we'll end with a brief
demonstration of SaltStack's approach to event-driven automation.



