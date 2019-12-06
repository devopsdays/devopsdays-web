+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Migrating from a legacy to next-gen observability platform in a live environment"
Type = "talk"
Speakers = ["amber-vaidya"]
+++

At eBay, we have been using different versions of the same central monitoring platform for ~15 years. The teams at eBay rely heavily on this platform to monitor their applications and infrastructure. This platform is so deeply ingrained into our applications and systems that it is non-trivial to replace it.

As the team managing this central monitoring platform, it is our responsibility to maintain, enhance and ensure its availability for our customers.

Over ~15 years, the open source community has made tremendous strides in the telemetry and monitoring space. Unfortunately, our platform has not kept pace with these improvements. We have accumulated large amounts of tech debt that is very difficult to pay off. It is also very expensive (CAPEX & OPEX) to grow and maintain this platform due to its legacy tech stack. When new applications get built at eBay, teams recognize the shortcomings of this legacy platform and have started spawning their own instances of newer/open source monitoring offerings (Prometheus, ElasticSearch, etc.). This defeats the purpose of a centralized monitoring platform that can do things like correlation across the various dependencies to reduce TTD (Time to Detect)

These reasons prompted our team to start building a modern and improved platform that will best serve eBay for its current and future needs.

This talk will be about our journey and will focus on:

Reasons behind initial failed attempts at trying to build this new platform
Methods we used to eventually succeed with releasing the new platform and learnings from this journey
Complexity of switching the platform in a live production environment without any impact
Navigating the organizational hierarchy in convincing teams at eBay to use this new platform
