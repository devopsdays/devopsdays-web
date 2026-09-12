+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How We Reduced Costs By Migrating Across Clouds: Lessons from a Real World Platform Migration"
Type = "talk"
Speakers = ["gerrard-ezeugwa"]
youtube = ""
slideshare = ""
slides = ""
+++

This is the story of how we decided to move from one cloud solutions provider to another, after years of questioning our monthly cloud expenditure and responding to multiple questions from our finance department.

We understood the magnitude of the task, and so we rolled up our sleeves and got to work. What began as a series of meetings with cloud providers where we had conversations on technology, architecture, support and commercial models, evolved into a proof of concept: migrating our UAT environment to a new cloud platform. 

From there, the scope grew rapidly. What started as a Kubernetes migration soon expanded to object storage, networking, DNS and hosted zones, container registries, identity and access management, CI/CD pipelines, database and other supporting services. Before long, we were planning and executing production migration. This all happened while keeping the business running.

Some decisions saved us weeks of effort. Others created unexpected problems for us. We learned not only the dependencies between resources, but also the sequence in which to move them to minimise disruption

This talk is not about why one cloud provider is better than the other. It is a candid account of engineering decisions. It is also about the mistakes we made and how we learned from them in a real-world cloud migration effort driven by cost optimisation.

Whether you are planning a cloud migration, questioning your cloud bill or simply planning a large-scale infrastructure change, you will leave with practical lessons that apply regardless of the cloud provider you use.