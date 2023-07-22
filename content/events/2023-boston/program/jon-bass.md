---
title: "Least Privilege In The Age of Thinking Machines"
Type: "talk"
Speakers: ["jon-bass"]
---

The concept of least privilege isn’t hard, but the execution sure is.

* Least privilege is hard to implement because our jobs are hard to define
* What are our jobs anyway?
* XYZOps, systems integrators, cloud

We end up creating human-in-the loop processes to address least privilege gaps

* Ticket queues
* These undocumented parts we don’t talk about
* The tribal knowledge gap fillers

A common response to least privilege gaps is to respond with an idealized model of total automation:

* Infrastructure as code
* No one touches prod
* Tools for everything, GitOps

Why is removing humans so compelling?

* Repeatability, efficiency, quality
* This is the work, right? shift left, software eating the world, etc.

And yet. How many of us have been on the receiving end of bad automation?

My experience with many automation projects: The 3 systems problem

* The system we all rely on that is old and was hacked together with some shell scripts 5 years ago. This is what everything depends on.
* The current system which was supposed to fix all these problems but is years late and only works for some subset of our processes.
* The future system aligned with best practices that we dream about and that we believe will actually fix everything

Between how cross functional our jobs are and the 3 systems problem, it is no wonder that least privilege is hard to implement. The net result is that we put our businesses at risk:

* Overprivileged access
* Slow processes
* This leads to workarounds, accidents

The solution: Legalize it

* Don’t make your humans resort to lives of crime to get things done
* The most impactful path to achieving compliance, removing bottlenecks, and preventing errors is to make affordances for human decisions

Aside: Let’s remember that humans save the world, literally

* Vasily Arkhipov, [the man who saved the world](https://en.wikipedia.org/wiki/Vasily_Arkhipov)

Use human review to make access temporary and reduce default access scope

* Peer review can be a powerful starting point

But what about repeatability and speed? Human review does not have to be slow:

* If it has the right context
* If it is distributed
* If repeat cases can be safely automated
* Example: Pull requests

Safe automation of human decisions does not require fancy AI models

* How many security breaches would have been prevented by just checking if this person had done this thing once before?

Let’s shift perspective to better supporting operators instead of controlling them

* What information would help humans make decisions?
* Let humans know the blast radius of changes and requests

Acknowledging our reliance on humans can be scary, or it can be empowering.

* Why not choose the humans?
