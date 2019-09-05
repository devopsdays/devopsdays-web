+++
Title = "Software/Site Reliability of Distributed Systems"
Type = "talk"
Speakers = ["piyush-verma"]
+++

Every product either dies a hero or lives long enough to hit Reliability issues. While you go about fixing this, What is the cost, both in terms of effort and business lost, of failure and how much does each nine of reliability cost?

The talk considers a sample and straightforward product and evaluates the depths of each failure point. We take one fault at a time and introduce incremental changes to the architecture, the product, and the support structure like monitoring and logging to detect and overcome those failures.

Now consider an application: A number that user sends an SMS text to of the form “Remind about ." When it's due, a service calls you back. User is charged for each SMS and reminders that they answer.

Where all do you think this can start failing?

Static Failures:

* Disks
* Network
* CPU
* Memory

Behaviour Failures:

* Degradation
* Latency
* Freshness
* Correctness
* DDos

What are the right tools and strategies to measure and monitor these failure points? What is the cost of measuring or leaving it un-measured?

There are Queues in the system. How do you monitor synchronous and asynchronous architectures?

The load has started to increase, but before we discuss strategies Let’s discuss CAP quickly. How do we decide if we need sharding, better CPU or Clustering?

How do we add backups? Should they be asynchronous or synchronous? Criteria to consider before picking up a strategy.

So far, we have been reactive about failures. How do we move to a proactive model? And Meanwhile, could you trace that request from that particular user for me?

At what stage and how do we start injecting reliability as a part of the Software development process?

Lastly, while all of this is said to improve and fix things, how do we prove that it does? How do you validate that MySQL replicas come back when the master dies. The only way to know is by simulating. How do we set up Simulations? A decade ago it used to be called FMEA; now it’s called Chaos Engineering.

And oh, we should also discuss Site vs Software Reliability.
