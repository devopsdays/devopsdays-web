+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Shipping the Agent Was Easy. Keeping It Honest Wasn't."
Type = "talk"
Speakers = ["rahul-sharma"]
+++

We shipped an AI DevOps agent to diagnose infrastructure alerts in weeks. Making its output trustworthy has taken months — and we're still not done.

The agent works. It also confidently told us our database was routing queries incorrectly — a claim we repeated to our vendor and burned a multi-hour escalation on before discovering it was completely fabricated. That same agent, facing a mystery memory spike it couldn't explain, did something different: it said ""I don't know, but this looks like GC."" That honest uncertainty pushed us to build observability we didn't had.

Same agent. Same model. Opposite outcomes. The difference wasn't the AI — it was whether we understood what the agent needed to reason correctly before we acted on what it said. Factual claims now pass through a second, smaller agent that cross-checks documentation before reaching our on-call engineer. Causal hypotheses require a corroborating metric before anyone acts.

Hot take: treat every agent claim as a hypothesis, never a finding.