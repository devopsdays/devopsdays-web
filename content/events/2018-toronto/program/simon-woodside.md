+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Let’s Challenge Common DevOps Assumptions: Health Tech Edition"
Type = "talk"
Speakers = ["simon-woodside"]
youtube = "w4-DuhYLLBE"
+++

In DevOps, we know that these three things are true: systems are ephemeral; systems are homogeneous; and systems requirements are slow to change. But, what if these assumptions aren’t true at all?

Every field of practice has their own set of standard practices and common assumptions. In DevOps, I can think of three:

- __Systems are homogeneous__: Most IT and DevOps administrators are running many instances of systems that are the same or very similar. They are mostly running the same databases and languages, they are mostly upgrading versions in sync, and they are mostly running the same tools and apps.
- __Systems are ephemeral__: Most contemporary tooling assumes that VMs and containers will come and go, be created and torn down frequently. Updates will be be rolling, everything will be load balanced, and systems will auto-scale.
- __Systems requirements change slowly__: Most developers and teams will settle on a small set of tools, platforms, and environments. They will experiment with new tools but make changes slowly and carefully.

What if these common assumptions aren’t true? If systems are heterogeneous, long-lived, and rapidly changing, then a whole different set of DevOps principles, policies and methods are needed in order to manage the systems effectively. I have found that this is especially the case in creating a flexible and secure hosting environment for health tech.

In creating MedStack, a secure hosting platform for healthcare apps, I have spend the majority of my time building systems that gone against common assumptions. For example, our hosting platform customers want to run a wide variety of different databases and languages on long-running systems, and we want to allow them to do that. These factors are a critical part of our business because our health tech customers require their infrastructure to be architected this way.

In this talk, I will talk about what we did that was different and how we implemented it at MedStack. I will also go why we chose these uncommon practices and how we support healthcare applications on our platform.