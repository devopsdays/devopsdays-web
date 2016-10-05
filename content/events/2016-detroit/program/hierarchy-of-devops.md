+++
City = "Detroit"
Year = "2016"
title = "Hierarchy of DevOps Needs"
type = "talk"

+++

**Speaker**: Zach Steindler, Duo Security

Maslow's hierarchy of needs is a well-known concept in psychology. It's a
multi-level pyramid with basic needs on the bottom (like physical safety) that
need to be met before someone can think about higher level needs (like
self-actualization, although to be honest I'm not exactly sure what that phrase
means).

I think it's useful to think about a hierarchy of needs for a Dev Ops
organizations as well, although there are some major differences. First, for
any given need, you don't need to have it completely solved before you go on to
the next level. In fact, it's often better to make sure every level has a
minimal system in place before going back and thinking about what an improved
version looks like. In this talk we'll go over several levels, from basic to
advanced, and discuss both a bare minimum solution as well as how to iterate to
something better. Specifically, we'll discuss:

- Logging: Why it's the foundation for every other category of need. The bare
  minimum here is quite minimal, but spending some time adding capabilities
  like semantic logging and full-text search can have a huge impact.

- Monitoring: If you have any sort of SLA / SLO you need to be proactively
  notified of issues. We'll go over the difference between tickets and alerts,
  and how to tame whatever system you currently have in place to get the volume
  to a reasonable level.

- Incident response: A little bit of planning can greatly reduce stress and
  mean time to recovery when things go sideways. We'll talk about how to
  implement incident commanders, response playbooks, and how to communicate
  with the rest of the org during an incident.

- The release process: Arguably the highest value and highest risk activity.
  This includes simple and more complex ways of qualifying a release, the 3
  questions I always ask before a deploy, and techniques for releasing without
  causing downtime.

- Capacity planning: Crucial for moving your organization from reactive to
  proactive. This isn't just tracking CPU and memory usage, although that's a
  start, but systematically identifying resource constraints and strategies for
  figuring out their breaking point.

The examples will be drawn from what I've seen work (and sometimes not work)
since joining the the Dev Ops team at Duo Security this year and from my 6
years as a technical co-founder at Olark before that.
