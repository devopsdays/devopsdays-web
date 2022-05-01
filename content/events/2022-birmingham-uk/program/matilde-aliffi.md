+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Managing the cognitive load of the Enablement team"
Type = "talk"
Speakers = ["matilde-aliffi"]
+++

The key mission of Enablement teams is to accelerate the velocity of product teams by reducing their cognitive load. However, by doing this, Enablement teams risk facing cognitive overload. Drawing from my experience of working as a software engineer in an Enablement team, I discuss some ways in which teams can manage their cognitive load.

Cognitive load is the amount of mental effort we are taking on. Our cognitive processing capacity is limited. Beyond that limit, the quality of our cognitive skills, e.g. problem-solving skills will drop, and we won’t be able to handle a problem efficiently and deliver good quality results.
Good management of cognitive load is important not only for individuals but also for teams. When the load is excessive, the speed and the quality of delivery are affected, and the motivation of team members also tends to suffer.

Engineers working in an Enablement team are specialists who collaborate on short-term projects with product teams allowing them to acquire missing capabilities in a given domain, thereby reducing their cognitive load.
In the company where I work, for instance, the Enablement team is composed of engineers with strong DevOps skills and has been involved in projects like the following:

- Migrating our website domains to a new CDN and WAF provider
- Adding automated accessibility checks in the pipeline
- Integrate managed detection and response partners into our services
- Drive a new logging strategy
- Implementing better disaster recovery and best practices around the continuous integration and deployment of our flagship website.
- Ship application logs to our logging provider
- Advising on AWS best practice
- Deploying testing infrastructure for the Q&A team

By delivering each of these projects, the Enablement team successfully decreased product-teams cognitive load in a specific domain, so that product teams were able to retain their focus on their key delivery targets. However, as you can see from the example of the projects we worked on, our team had to engage with different types of projects which required different skills within accessibility, cloud infrastructure, security, observability, and continuous integration and delivery domains. The team had to upskill in these domains to deliver our projects. Engineers in the Enablement Team also had to learn about other teams’ tech stack, get acquainted with different codebases and linting and conventions, and agree on ways of working during the engagement period, setting expectations around communication, delivery, knowledge transfer during and after the engagement. Moreover, the team also needed to be aware of how the changes required within the tasks are going to affect other services or tools it interacts with (e.g. how does a change of CDN and WAF provider affect the availability of the website? How does the automated accessibility checks affect the continuous integration and deployment of the website?)

As you can expect, this increased massively the cognitive load of the Enablement team. The team was spread thin across multiple tasks, some level of familiarity and context switching, continuous re-prioritizing, and communication fatigue affected the velocity of the team. And as a result of this, the motivation of team members suffered too.

As we had experienced first hand, the high cognitive load was bad for the team because:
- It leads to slow delivery
- It can affect team motivation
- It can lead to errors - e.g. details on how services interact may be overlooked

Cross-team dynamics and relationships with stakeholders can also suffer if the team has reduced bandwidth to ensure to keep their stakeholders and product team in the loop as a result of communication fatigue.

In my experience, managing the cognitive load of the team has not been an easy task and we are still learning how to best address it. So far, however, the following things have been helpful:

- Document like crazy. Beware the temptation of considering documentation as an unnecessary task, and a source of cognitive load. It’s a lifesaver. Document the architecture of the project, the architectural decisions, and the knowledge required to maintain the application the team is working on but also the output of important conversations, the process agreed. Good documentation ensures that it was easy for the team to remember the context of a given change and decision, it makes communication more effective, plus everything is ready for handing projects over.

- Handing over ownership of services to product teams at the end of engagement projects. This ensures that the team’s backlog does not get filled by maintenance tasks - thereby reducing the team cognitive load.

- Having a clear set of priorities for each quarter agreed with all team's key stakeholders, and ensuring that the team focuses only on the tasks that were assigned the highest priority. This is easier said than done, as the Enablement team often has multiple stakeholders requesting work for the team for the same quarter, which is given the same priority level. But in general, priority conversations with stakeholders have been smoother where the work for the team was visible and the team was made accountable to all engineering teams.

- Keeping unplanned work at bay. We asked support from the Delivery team to keep a funnel for the team - battling away last-minute requests from help and ensuring that every request of engagement is prioritised accordingly
