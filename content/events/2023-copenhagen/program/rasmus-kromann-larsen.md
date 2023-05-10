+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Road to Production: How our build pipelines evolved"
Type = "talk"
Speakers = ["rasmus-kromann-larsen"]
+++

All software must go to production to provide value and this road has a lot of different approaches. At Templafy we believe in shipping our code as quickly as possible. Over the last 3 years, we have been evolving our build pipelines to keep up with onboarding many new colleagues while reducing the risk of breakage through more tests and static analysis. Today we ship 10.000 pull requests to production per year with a dynamically scaling fleet of build agents that has more compute (240 cores and nearly 1 TB of RAM) than our actual production environment at peak.

In this talk, we will explore the problems we have faced and the solutions we picked - what worked and what did not work? Along the way there will be practical tips that can be applied at any level of build automation no matter if you are just starting out or already have an advanced setup.

The demos will be based on Azure DevOps but the problems discussed also apply to build services like GitHub Actions and others.
