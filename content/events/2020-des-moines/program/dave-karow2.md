+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Good News: The Release Night is an Anti-Pattern"
Type = "talk"
Speakers = ["dave-karow"]
+++

Gathering up changes and rolling them out all at once late on a Thursday or Sunday night, when fewer customers would be online and the team could be on "high alert" for incidents and then strive to resolve them before "business hours" on Friday or Monday, may have made sense at one point, but in a world striving for shorter cycle times, small batch sizes and limiting work in progress, the release night and the big-bang release cutover have become an anti-pattern that stifles innovation & leads to wider outages, not smaller ones.

According to AntiPatterns: Refactoring Software, Architectures, and Projects in Crisis, two criteria must be met to declare an anti-pattern:
> 1. Some repeated pattern of action, process or structure that initially appears to be beneficial, 
> but ultimately produces more bad consequences than beneficial results, and
> 2. A refactored solution exists that is clearly documented, proven in actual practice and repeatable.

The refactored solution is *Progressive Delivery*, which, in it's purest form consists of three capabilities:
1. Decouple deployment from release, so code can be in place but "off" and then turned up and down w/o a new deployment.
2. Control code exposure (who new code is "released" to) by targeting a list of users, user attributes or randomized but persistent percentage "buckets"
3. Observe *who* has been exposed to new code and watch for the differences in system health and user behavior for the "on" and "off" groups rather than watching global metrics to determine "how the release is going."

These three capabilities can be used to "limit the blast radius" of unanticipated issues that only surface in production (i.e. release monitoring) or to prove the business impact of a potential change before rolling out a change to all users (i.e. product experimentation or A/B testing).

Thanks to the generosity of those who have gone before us on this journey and are willing to share their experiences, this practice has become well documented. That, in turn, has lead to wider adoption and the availability of commercial solutions for those who would rather get on with Progressive Delivery than spend resources building what they could just subscribe to.  Once you understand the three pillars and two key use cases, you can build or configure your way to Progressive Delivery and put the big bang release night in it's place: history.