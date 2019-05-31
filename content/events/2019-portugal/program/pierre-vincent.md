+++
Talk_date = "2019-06-04"
Talk_start_time = "14:30"
Talk_end_time = "15:00"
Title = "Changing tyres on a moving car: our journey to zero-downtime deployments"
Type = "talk"
Speakers = ["pierre-vincent"]
+++

Applications built over the years carry historical design assumptions, such as: it is acceptable to take a system out for upgrade maintenance for a few hours every 6 months.

In today’s world, embracing continuous delivery practices means more frequent releases, which means more downtime. Besides, finding a good maintenance window becomes a struggle with worldwide users, as well as for the operators managing the upgrade out of business hours.

In this talk, I want to demonstrate that by mapping out complex deployments processes, it becomes possible to prioritise work and progressively reduce the deployment impact. I will also give practical advice on how to tackle blockers to zero-downtime deployments, such as:

* Migrating database schemas while keeping an application running
* Ensuring backward compatibility of messages and APIs
* Dealing with long-running background jobs
* Mitigating user session loss

Deploying without the comfort of a maintenance window also means that stability during the upgrade is a critical concern. I will go through how it can be achieved through systematic pipeline automation and good system visibility to help operators during the upgrade.

This talk comes directly from my personal experience: our core product used to need a 3 hours blackout for upgrades, every month, with somebody up doing it at night time. Today, we can deploy during working hours without users noticing and are finally able to break away from long release cycles. This was achieved thanks to a strong collaboration between developers, SREs and infrastructure engineers, applying the techniques from this talk.
