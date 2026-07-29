+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From Pager to Prompt: Turning Incident Command into an On-Call LLM Coach"
Type = "talk"
Speakers = ["karen-scheid"]
+++

From Pager to Prompt: Turning Incident Command into an On-Call LLM Coach

The hardest part of a 3 a.m. incident isn't the debugging — it's managing the chaos and everything surrounding it. Who do you page? What do you post to Slack? What severity is this, with incomplete information, while the business is watching? All of that overhead grinds people down, and it hits hardest on the engineers who've never done it before.

This talk walks through a real production implementation of an LLM-powered incident coach built on top of PagerDuty, Datadog, Slack, and Confluence. When an engineer describes what they're seeing, the system has already read their triggered monitors, pulled their incident response policy, and scanned the last 20 postmortems. It asks the right questions, drafts stakeholder communications, and pages the right teams — so the engineer can focus on the actual problem.

But the deeper story is what happens when you encode your best incident commander's instincts into a system prompt: junior engineers get senior guidance on day one, what your best engineers know doesn't walk out the door when they leave, and every postmortem makes the next incident less brutal.

You'll leave with patterns and actionable approaches you can apply to your own stack — and a different way of thinking about what it means to support the humans in your on-call rotation.
