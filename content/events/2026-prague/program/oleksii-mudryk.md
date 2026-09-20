+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "When Your Safety Net Becomes a Trap: Cleaning Up Feature Flag Debt "
Type = "talk"
Speakers = ["oleksii-mudryk"]
youtube = ""
slideshare = ""
slides = ""
+++

Feature flags are one of the most useful tools in a modern DevOps toolkit: progressive rollouts, A/B tests, and safer deployments. They also accumulate quietly, until a codebase is a maze of stale conditionals nobody dares delete, every incident investigation detours through dead branches, and every new engineer’s first week is spent asking “is this flag still a thing?”

This talk is about treating flag debt as a first-class cleanup project: auditing a large flag inventory, classifying every flag as active, stale, dead, or zombie, and systematically removing the dead weight while the system stays live and under load, without regressions. I will share the practical approach I used in a live, multi-repository system: cross-referencing a flag-management tool’s API with organization-wide code search to understand which flags were still referenced and where. This addresses a practical, publicly documented gap where some tools’ built-in code references work at repository level and do not scale cleanly across an organization with many repositories.

I will cover the classification framework, a staged deprecation process using small, monitored cleanup waves, a PR checklist, and ways to keep flags from accumulating again.