---
title: "From Firefighting to Boring: Predictive Database Alerting at Scale (And the Confounder I Can't Rule Out)"
Type: "talk"
Speakers: ["pravalik-medi"]
---

Most observability talks show you a dashboard and a number that went down. This one shows the number, then spends real time on why that number is harder to defend than it looks.

The first half is mechanics. I'll walk through the five incident classes that covered about 95% of our failures — CPU saturation, memory contention, partition maintenance failure, statistics staleness, and IO contention — and why only two of them generalize across every platform we run. The rest are platform-specific in ways that break any attempt at a universal alert template.

Then the part I find most useful for other practitioners: threshold calibration is not one technique, it's two. For continuous resource metrics you're setting a margin below a known failure point, working backward from historical incidents. For maintenance-health metrics you're detecting deviation from an expected state, where there's no gradient to leave margin on. Conflating these produces alert rules that either never fire or never stop firing. It took a lot of noisy pages to work that out.

The second half is the honest accounting. Our team was restructured two to three months before the tooling rolled out. Both changes plausibly reduce incidents. I've spent more time trying to disentangle them than I spent building the alert rules, and I'll show you what I did to constrain the attribution and where it's still open. If you're about to present a before-and-after number to your leadership, this is the section that will save you.

Takeaways: a method for deriving thresholds from your own incident history rather than borrowing someone's defaults, a framework for deciding which alerts should generalize and which shouldn't, and a sober way to talk about attribution when you can't run a controlled experiment on production.

No tool pitch. The vendor is incidental and I'll name it once.
