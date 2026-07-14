+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Pull requests are dead, long live peer review"
Type = "talk"
Speakers = ["dylan-ratcliffe"]
+++

When AI writes 80–90% of the code on a team, peer review breaks. The pull request is now produced by a machine you can't argue with, and the reviewer is auditing a diff instead of talking to a peer. People stopped enjoying the job.

So we changed the workflow. Review moved off the diff and onto the plan: the human-written intent that goes into the model before any code gets generated. We review the thinking we care about and let the agent fill in the gaps. PRs get checked automatically against the plan, and only deviations come back to a human.

Three weeks in, story points tripled and lead time dropped 59%, without an increase in AI usage. The number that mattered most was one we didn't measure: engineers love the job again. This talk covers what we changed, why it worked, and how to do it.
