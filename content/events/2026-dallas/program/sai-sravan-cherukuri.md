+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "We Gated Our Releases and Stopped the 3 AM Scramble"
Type = "talk"
Speakers = ["sai-sravan-cherukuri", "sai-saketh-cherukuri"]
+++

Every team has some version of this moment: a high-stakes period is two weeks away, a big launch, a busy season, a hard deadline, and someone pulls up a spreadsheet and asks, "Are we actually ready?" And the honest answer is: nobody really knows. You piece it together from whoever remembers the last incident, a few Slack threads, and a general sense of optimism.

This talk is about how I got tired of that moment and built something to make it go away.

I'll walk through how our team built a way to continuously score every service's health and recovery readiness so that by the time peak season arrives, we already know exactly where the risk lies. Not because we're watching better dashboards, but because we built governance into the process before anything ships.

The idea borrows from what DevSecOps figured out years ago: catching a problem at commit time is a hundred times cheaper than catching it at 3 AM during your busiest week. We applied that same thinking to performance and resilience. Every service gets a health score based on real signals: error rates, latency patterns, test reliability, regression history. If a service scores too low, the release is blocked. No exceptions, no manual override without a paper trail.

I'll talk about what broke before this worked, including the organizational pushback, the false confidence that comes from "we have monitoring," and the difference between knowing something is broken and having a process that prevents it from shipping in the first place.

I won't pretend this is a solved problem. But I'll give you a framework you can take back to your team on Monday, regardless of your stack.

