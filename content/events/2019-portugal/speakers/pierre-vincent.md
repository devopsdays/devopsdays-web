+++
Title = "Pierre Vincent"
Twitter = "PierreVincent"
website = "https://blog.pvincent.io/"
image = "pierre-vincent.jpg"
type = "speaker"
linktitle = "pierre-vincent"
+++

#### Speaker

Pierre is originally from a Software Development background and the rise of DevOps drove him to become more involved in how systems actually run in the real-world, and how he could make a difference helping others care about the applications they release to production.

He is currently Infrastructure & Reliability Manager at Poppulo, where he's responsible for their continuous delivery platform and the operations of their hybrid on-prem/cloud infrastructure.

***

### Quick Q&A With Pierre Vicent

> *We had a chance to catch up with Pierre and ask him a few questions about deployment strategies.*

**[Miguel Alho](/events/2019-portugal/contact/): Hi Pierre! In your talk, you describe how you went from requiring hours of downtime to update services to zero-downtime deployments. That’s a massive advancement in delivery capability. What effort was necessary to make that change?**

**Piere Vicent**: Actually a lot less that we originally thought! Because our app development started more than 10 years ago, there was always a lot of aversion to look at zero-downtime, because the dominating thought was that only a full rewrite would allow us to achieve it. We actually took a step back and used value-stream mapping to draw an honest picture of what our release & deployment look like... and immediately ideas started flying around the room on ways to reduce the impact of deployments on our end users.

In the talk, I will go through the mapping process itself and also through what we actually did to get to zero-downtime, such as implementing rolling-upgrades or decoupling our database migrations from application update.

**MA: Recently there was some discussion on social media relative to avoiding friday deploys, because the the problems that come with change. Has your team been able to avoid those types of problems with your implementation?**

**PV:** Wanting avoid Friday deploys is typically a symptom of greater systematic issues: lack of visibility in production, insufficient controls and overall poor operability. Fixing these issues is a much more sustainable solution than banning deployments on Fridays, which just hide the problems.

For us, moving to zero-downtime deployments meant removing the "safety net" of a maintenance window, and instead running complex upgrades while continuing to serve live traffic. A lot of our work actually didn't involve code changes or re-architecture, but instead focusing on reducing the deployment stress by making the deployments consistent, repeatable and observable.

At Poppulo, it's up to the development teams to make their best judgment when pushing changes to production, whether that's a Monday or Friday - and our deployment metrics actually show that we deploy at the same cadence regardless of the day of the working week!

**MA: Considering continuous improvement, what do you see as being the next steps to enable further advances in the delivery process, if any?**

**PV**: From a technical point of view, there isn't much of barrier to deliver changes fast: containers/serverless have streamlined packaging & running code, automated deployment pipelines have made things fast and repeatable, feature flags have reduced risk through controlled rollouts, etc.

I think that as an industry, we're yet to harness this power to deliver good software by making smaller bets, and by being more deliberate about slicing stories with tangible value for users each step of the way. At the end of the day, if we don't deliver the right thing, it doesn't matter how fast the delivery is.

**MA: Thanks Pierre! We have definitly got a lot of things to learn with your presentation. Can't wait!**

***