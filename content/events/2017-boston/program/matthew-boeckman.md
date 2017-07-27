+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "There is No Root Cause: Emergent Behavior in Complex Systems"
Type = "talk"
Speakers = ["matthew-boeckman"]
+++


What went wrong? Why does this always happen? How can we ensure it Never Happens Again? For most of the internet age, engineering teams have focused on finding a cause of an outage. A belief existed, and persists, that all errors or behaviors can be traced back to a single causal entity. The Root Cause Analysis is conducted in service of finding that entity, and correcting it. By doing so, we have been taught, we prevent recurrence of the error in question.

Much of RCA thinking comes from manufacturing and electrical systems, where simple causality can exist. An oft failing fuse is caused by poor wiring. In computing environments, there is rarely so simple a cause. Within even the simplest application nest dependencies, logic, bottlenecks, and inefficiency. By wrapping that application in an operating system, on a server, on a network, on the internet, managed by process, actioned by people we add enough complexity to force us to reconsider the Root Cause Analysis approach.

Modern tools and practices, like DevOps, enable engineering teams to adopt significant complexity at relatively low operational cost. Once unthinkable, microservice architecture in a public cloud environment is now a common choice for new software projects. Consider, for a moment, the layers of complexity captured in that decision. Now consider how opaque the agents in those systems are to the operators (us).

Emergence is a phenomenon whereby larger entities arise through interactions among smaller or simpler entities. In theory, complex systems exhibit highly unpredictable behavior, and generate surprising patterns. In practice, teams operating complex engineering systems always see deeply interrelated causality - a blend of people, process, and the systems themselves. So why do we still focus our after action analysis on a Single Cause?

In this talk, we’ll explore these conflicting realities for incident management teams. Attendees will learn about differences between Root Cause Analysis, and more techniques like Postmortem. While this is a technical talk with examples of both simple and complex infrastructures, much time will be spent considering the impacts of people and process to those same systems. Attendees will leave with some actionable ideas to bring back to their teams to improve their own after action analysis activities.

