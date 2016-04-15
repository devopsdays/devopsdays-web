+++
City = "Toronto"
Year = "2016"
date = "2016-03-06T21:28:07-06:00"
type = "event"
title = "Jason Shaw"

+++

### Public Postmortem on After Hours Maintenance Gone Awry

**Abstract:**

We needed to add some capacity to a Redis cluster, which would have customer impact, so it was scheduled for after hours. 20 minutes into a 30 minute window, wanted to close open connections, so we stopped a bunch of services. One of them had had some init changes recently, and it turns out they weren't tested and made it to production. What do you do when you're an Admin but the problem is dev code and it's 1am?

**Speaker:**

Jason Shaw, <a href="https://twitter.com/jasonious" target="_blank">@jasonious</a>

Long time Linux SysAdmin with too much empathy for the BOfH style. Currently working on continuous integration and deployment at FreshBooks.