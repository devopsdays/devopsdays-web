+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How I unintentionally patched all of Target's edge servers during the day without impact"
Type = "talk"
Speakers = ["stephanie-culver"]
+++
Have you ever wanted to patch all your nodes, and accidentally done it in a single day with no impact?

Stephanie was leading the configuration of edge compute at Target - roughly 10,000 physical servers in 2,000 locations maintained exclusively through code - when her release updated the OS kernel on 6,000 production servers at 2pm on a Thursday and simultaneously stopped all future convergence. Learn about the best practices that helped make this huge mistake happen without catastrophic impact while she shares what went wrong, how the system recovered, & which development hygiene habit saved the day!

Learning objectives:

- Mistakes happen. Own it & learn from it when they happen to you. Be kind to others when they happen to them.
- Development best practices - testing, feature flags, guards, code reviews.
- Change rollout strategy matters - environment design, config files, maintenance windows.
