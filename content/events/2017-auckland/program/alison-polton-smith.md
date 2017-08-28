+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Metrics That Matter"
Type = "talk"
Speakers = ["alison-polton-smith"]
+++

Peter Drucker famously said “It’s impossible to improve what you can’t measure.” At the same time, measuring the wrong thing can create a world of pain, incentivizing teams to optimize for the wrong behaviors, or to game metrics they see as useless.

In this talk, I’ll share what I’ve learned about metrics that can be used to understand and improve an organization’s Continuous Delivery processes. I’ve selected these metrics based on interviews with more than a dozen DevOps practitioners and consultants conducted while developing an analytics offering for GoCD.

As I describe these metrics, I’ll weave in real-world stories to provide practical examples of how they might be applied to help improve a team’s performance.

I’ll focus on four key metrics that reflect the health of a team’s build system and Continuous Delivery culture. The four metrics I’ll focus on are:

Number of Deploy-Ready Builds (how many green builds of master a team has that they would feel comfortable deploying)
Cycle Time (the time it takes for a developer to get from commit to feedback)
Mean Time Between Failures (how long a team can routinely deploy software for without a failed deployment)
Mean Time To Recovery (how long builds stay red before being returned to a healthy green state)
For each metric, I’ll explain its meaning, how it can be interpreted, and how a team’s performance along this dimension might be improved.

I’ve picked these metrics because they straddle application development, business impact, and operations, encouraging conversation across traditional divisions in the DevOps ethos. To emphasize the importance of selecting the appropriate metrics, I’ll also share a few real-world examples that I believe fall into the category of “Meaningless Metrics,” and discuss common pitfalls of metrics that don’t matter, including a tendency to lack buy-in or to create unintended consequences.