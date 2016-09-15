+++
City = "Detroit"
Year = "2016"
title = "Dev Owns Quality When Dev Feels The Pain"
type = "talk"

+++

**Speaker**: Jeremy Rickard, VMWare

I worked on a team at VMware that delivered one of our first SaaS services. To
reach that goal, we transitioned from delivering shrink wrapped stuff every
six/nine months to pushing to production on a daily basis.  We started with a
separate test team that picked up when development was over and an operations
team that handled most escalations, and ended up carrying a pager(duty app). We
also got woken up at varying hours of the night to handle problems…sometimes
our problems and sometimes not. We went from a modest level of unit testing
with fairly manual processes to fully automated unit testing, integration
testing and deployment all driven from Jenkins. We also implemented extensive
instrumentation and logging to facilitate triage of issues and implemented a
number of additional monitoring solutions for our deployed services using a
variety of Open Source/Commercial Tools, as well as some pretty fun custom
built Slack driven automation to reduce the time it took to deploy new changes,
as well as to discover and remediate problems (vrac-bot: @channel I’ve noticed
that heap allocation on instance XYZ is at 80% or brac-bot: @channel,
ping-o-meter reports instance XYZ down, I’ve created a new channel for this
incident).  We also did this while being a fairly distributed team across 4
different geographical locations.  In my talk, I’ll talk about our journey and
the changes the experience drove within our team, how we built/tested our
stuff, how we learned to embrace automation and overall how I think it made me
a better developer and why I think all developers need to have that experience. 
