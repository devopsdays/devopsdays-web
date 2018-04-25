+++
Title = "Proposed Talks"
Type = "event"
Description = "Proposed Talks for devopsdays Austin Summit 2018"
+++


### Proposed Talks

There are 21 talk slots available. Attendees will be voting on site which of the proposals below will be presented.

#### Batteries Included: Enabling Community Contribution (Aaron Aldrich)

"Pull Requests Welcome." A phrase to indicate you're open to community contribution, but it does nothing to help bring high-quality contribution quickly. Contributors have to ramp up in your code base, may not have a great test suite, etc. What steps can we take to enable that process?

This is the story of enabling easy, quality contributions for Elastic Beats. Our Beats project runs in unpredictable environments so we wanted our community to be able to build extensions for their needs as easily as possible.

Attendees will learn how we:

* Designed for customization
* Built Documentation into the code
* Reduce repetitive work
* Enable local testing with minimal effort
* Allow for sharing back to the larger community

#### Marie Curie, Open Source, Kickstarter and Women in Tech (Amanda Whaley)

Think of Marie Curie. Would you expect to find a fascinating number of similarities between the Curie's treatment of their work in the early 1900's and today's tech industry?  I certainly didn't… Join Mandy Whaley to explore how the Curie's used an approach similar to modern Open Source licensing to open the process for isolating radium to the scientific community, and how the limitations at the time on the rights of women to own intellectual property influenced this decision.  Also, learn how Marie Curie also used a strategy similar to Kickstarter to raise funds to buy radium for her own research, and how all of these experiences and lessons can help us today.

#### How does the fastest growing cloud computing software company do DevOps? (Shiva Ramachandran, Robert Duffner)

ServiceNow has experienced tremendous growth in its business and is becoming a larger enterprise. But is DevOps suitable for large enterprises or is it just for startups and small/medium sized businesses? This session will focus on how ServiceNow does DevOps successfully across the entire organization. We will discuss lessons learned on how to securely do DevOps in your organization. We will also share our unique DevOps approach to how we maintain the quality of our software code.

#### Use the infrastructure, Luke! (Ashley Roach)

Do your developers think infrastructure is irrelevant to their app?  This talk will show you how you can use your infrastructure to write a health check component to make your application more robust.

Most developers don’t really care about the underlying infrastructure on which their app is running. In particular, app developers care that the systems are up and that they provide the appropriate compute/storage/networking capabilities, but rarely do app devs think: “What features of the infrastructure will help me write more resilient and fault-tolerant applications?” By using some features in Cisco’s infrastructure, but could be applicable to other platforms, I will walk through my experience in building a web application that takes advantage of that infrastructure to be aware of the underlying compute and network resources.  This isn’t a vendor pitch, but rather uses Cisco’s products as an example as that’s what I have access to.  Code is open sourced here: https://github.com/CiscoDevNet/infraspringboot

#### Implementing DevOps for Simultaneous Development of Source Code, Test and Simulation Platform (Behlul Sutarwala)

Traditionally DevOps has been used for application software with stable OS/Simulation SW. We will take an abstract look at how DevOps was implemented for Embedded Software when development for the low-level APIs and Application/Test Development is taking place in parallel with Simulation Platform development. We will talk about some of the challenges faced and talk about a solution. Lastly, we will talk about the preparation and design steps to allow for DevOps with HW in the loop.

#### Monolith to Microservices:  Managing Organizational Change (Tobias Dunn-Krahn, Mattius McLaughlin)

Like many modern development organizations, xMatters has been hard at work decomposing a monolithic application into many microservices.  With this effort comes more autonomy for service-owning teams, but also more responsibilities.  Tobias Dunn-Krahn and Mattius McLaughlin will talk about how their organization has transformed to face the challenge, as well as how to promote service ownership, balance operational concerns with feature velocity using SLIs/SLOs and avoiding callout fatigue.

#### Know your Infrastructure - Caching AWS (Chase Evans)

Cloud providers have made it simple to host your app across the world. Unfortunately with that comes a proliferation of cloud accounts and regions within those that are all isolated. Because of this isolation, the management consoles tend to only give you information in one region and account. Come learn how Coinbase built a near realtime cache on top of AWS, avoided rate limits, and made the AWS API more developer friendly.

#### Open Source Security in the Fast Fluid World of Containers (Daniel Nurmi, Andrew Cathrow, Zach Hill)

Containers are rapidly being adopted by many organizations. Developers gain huge advantages from fast prototyping, quick development cycles, and a purpose-built environment for their applications. But when these new apps go into production, DevOps and Security Engineers find themselves with something much more difficult to manage. In this talk we will discuss some of the pitfalls that we have seen when moving container-based apps through the continuous integration pipeline from development to production, and review how open source tools like the Anchore Engine can ensure security and compliance in your containerized environment.

Who is the audience: Anyone using containers in a production environment: developers as well as those responsible for operations and security. If you have containers in your CI/CD pipeline, you will find this talk useful. If you’re planning on deploying containers into production in the near future, this talk will help you avoid some pitfalls.

#### Kubernetes for the konfused, a strategy toolkit for normals (Cote')

Figuring out how to get k8s up & running is a PIA. Then there’s managing it in production. Before that, though, you need to figure out why you’d even want to run it, which k8s to use, where to run it, & still more. Using IRL cases, this talk covers the the options so you pick the k8s right for you.

What exactly should you do with kubernetes? When it comes to running kubernetes, there’s a matrix of options: running your own instance or using a distribution, how you fill in the missing parts and customizing it, choosing to run in private cloud or public cloud, bringing your own kubernetes to a public cloud or using the instances sold by the providers, what PaaS you’ll run on-top of the cluster to actually run your software, using kubernetes for legacy or just green field applications, who in your organization will manager your cluster and who won’t…or maybe you’re supposed to just “leapfrog” all of this and go “serverless,” whatever that means.

The options are delightfully numerous! Of course, going through this exercise assumes you even have the problems kubernetes is trying to solve, but how would figure that out?

This talk will address these questions, and, using case studies of success - and failure! - provide you with a toolkit for putting together your kubernetes strategy…if you actually need one.

#### Network Audit using Ansible (Daniel Ney)

I have developed an infrastructure that provides automated audit of Network Configuration (Cisco, Arista and Juniper routers and switches) using Ansible and Jenkins. The audit is based on building a Golden configuration for the devices using Ansible and comparing the Golden configuration against active configuration in the network producing a context-sensitive result. A network-wide audit completes in less than 10 minutes using Jenkins, where the Jenkins jobs are also managed by software (JJB) and source controlled. Any differences attributed to Out-of-band changes or configuration modeling errors can either be played back to the devices or used to update the configuration modeling, respectively. This utility is being used by ViaSat’s Networking devops team to automate building and management of device configuration.

#### Docs Like Code: Strategies and Stories (Dave Bertling)

When you treat docs like code, you multiply everyone’s efforts and streamline processes through collaboration, automation, and innovation. The benefits are real, but these efforts are complex. The ways you can leverage developer process and tools vary widely. Let's unpack the absolute best situation for using a docs as code model. Then, we can walk through multiple considerations that may point you in one direction or another. We can talk about version control, publishing, REST API considerations, source formats, automation, quality controls and testing, and lessons learned. Let's study best practices that are outcome-dependent and situational, creating strategic efforts.

#### Security tips for AWS (Deniz Parlak)

Today, we are at a time when cloud technologies are used predominantly. At this point, AWS meets most of its market share. The presentation will describe practical security methods for common services (EC2, S3, KMS, etc.) in AWS, hardening applications, and explanations of how security can be achieved by demonstrating how subdomains are hacked through security vulnerabilities involving user-based mistakes.

Topics:

* Identity and Access Management
* Infrastructure Security
    * CDN
    * VPC
* Auditing and monitoring
    * Splunk
* Hardened Amazon Machine Image
* Subdomain takeover

#### Laying the Foundation for Stateful Containers in Production (Grace Chung)

Today’s businesses demand modern applications and workflows to deliver digital products faster than ever before. Containers accelerate product development, but enterprises are hindered by legacy VM infrastructure and an unproven container stack – especially as they transition to running stateful containers in production.

Are you facing these container challenges?

* IT that fails to match the speed and agility of containers
* Legacy infrastructure that fails to deliver predictable performance
* Prohibitive cloud computing costs

Attend this informative session and learn:

* How to integrate container infrastructure with modern developer workflows
* The pros and cons of DIY, virtualized, and hyperconverged container infrastructures
* How purpose-built container infrastructure can slash costs, simplify management, and accelerate time to market

#### Lessons learned after three years of automated deployments (Hector Villarreal)

It all started with the best of intentions back in 2015. We wanted to do what was 'right': Infrastructure as code and an automated way to do deployments with a microservices architecture. A lot of work was done and decisions that were made at that time allowed us to accomplish those goals in record time... more or less. Three years later, we've outgrown that initial systemand a lot of decisions that were made with good intentions are hindering our growth today. In this session we'll talk about the lessons learned and what we're doing today to fix it.

#### Making Sense of Incidents in the Modern Era (J. Paul Reed)

"In what ways and to what purpose are the artifacts produced in a post-incident review process utilized in practice by software development and operations companies?"

This simple question (with a seemingly obvious answer) served as the launching point for months of research on what artifacts our industry produces when we hold incident postmortems and retrospectives, the various elements of those artifacts, and a weeks-long deep-dive into how three different teams within one organization _actually_ use those artifacts to
facilitate organizational learning, "learning from failure," and improved incident response.

This talk contains the answer to that question; in it, we'll cover:

* Findings from a review of various incident postmortem/retrospective artifacts, solicited from across the software development and operations industry.
* A deep-dive into how various teams in one organization uses their artifacts and to what ends.
* Other fascinating highlights from research conducted, highlighting how actually do retrospectives and document the outcomes, not just how they _say_ they're doing it.
* Finally, highlights from this organization's usage which can help your organization further embrace learning from failure and improving incident response.

#### Blockchain Infrastructure @ Coinbase (Jack Kearney)

Coinbase has some fairly unusual security & infrastructure requirements. One of these requirements is that every server in our infrastructure is both ephemeral (< 30 days) and immutable. The deploy process for most applications is fairly straightforward: 12-factor apps are blue/green deployed behind a load balancer. Blockchain nodes, however, present a difficult problem: how do you blue/green deploy a server with 300GB on disk? In this session I'll talk about how we solved this problem in a Blockchain-agnostic fashion using a new project called Snapchain.

#### You're Writing Too Much Code (John McDonough)

Are you really using that API to your advantage? Are you writing purpose specific code when the API provides you with the ability to create code that adapts and dynamically supports the operation you need? In this session I'll show you how I created dynamically adapting code that utilizes Python's reflection and introspection capabilities to do thousands of operations in my data center without changing or modifying a single line of the original code.

#### Tick Tock for the OS Rolling Clock (Ken Robertson)

At Coinbase, we maintain a high standard for security and operational readiness. In line with this, we've been working on having a better way to have a regular process for major updates, while still allowing us to do tightly controlled incremental updates to be reactive for critical updates. This has been implemented as a toolkit we call Minion, which allows us to define a base operating system derived from Gentoo and CoreOS. In this talk, I will cover how we manage our operational environment at Coinbase between our infrastructure and security teams, how we wanted to improve the process, and where we plan to take it in the future.

#### Reduce Operations Toil by Automating SSL Certificates with LetsEncrypt (Kevin Hubbard)

Imagine a world where there were no more fire drills renewing an expired certificate!  LetsEncrypt provides an API to allow your operations team to fully automate SSL certificate requests, domain validation and retrieval.  Eliminate the purchasing and validation overhead of traditional operations and improve security by increasing the velocity at which certificates are renewed. 

The target audience for this presentation is operations folks who are interested in reducing toil managing SSL certificates while improving security by rotating certificates more frequently.  This presentation is for individuals who are responsible for site reliability, configuration management, security operations and development operations. 

You’ll learn the key concepts and features of LetsEncypt.   You’ll learn that there’s no need to rely on a purchasing department to buy a cert online.  You’ll be happy to hear there is an alternative to the hassle of creating a CSR and installing a certificate, only to use gentilkiwi/mimikatz to extract the cert with the private key to install it everywhere else it’s needed.  Have you ever left the .PFX file lying around on your servers’ desktops with the default “mimikatz” password?  Me neither. You’ll learn which ACME clients have worked from me, and what automation strategies for deploying certificates to servers make sense.

#### Ghostbusters: The Birth of Site Reliability Engineering at Coinbase (Luke Demi)

Over the course of 2017, Coinbase experienced exponential user and trading volume growth, which in turn led to periods of website instability and downtime. To address these issues, Coinbase put together a specialized ""Uptime Team"" to focus on responding to incidents and improving reliability so that the rest of the company could continue to operate.

This talk will focus on our learnings throughout this experience and how we've leveraged them to build a new Site Reliability Team from scratch.

#### Automated performance testing in pre-production with CI and OSS tools (Billy Hoffman)

Billy explains how to integrate open source performance testing tools into your workflow. Along the way, he shares lessons learned while helping organizations get tools into CI & success stories about how this can reduce regressions & accelerate dev. while remaining confident about performance.

#### How to Sell DevOps in Under an Hour (Mark Lavi)

You’ve entered a new customer’s conference room, the introductions are complete, and you have the remainder of an hour to change their traditions: how would you explain and sell DevOps to non-technical management, engineering, and IT? For the past three years, I’ve travelled to small and large businesses around the world to explain how DevOps can continually impact any organization and I’ve evolved to speak the language of business and demonstrate positive business outcomes.

With two simple definitions of agility and scalability (better known to our community as “DevOps” and “Pets versus Cattle,” respectively), you can explain and diagram the stages of a DevOps journey to any organization. Once the journey has been mapped out, it can be deconstructed over parallel dimensions of cultural, architectural, operational, and infrastructure progression to illustrate how any organization can achieve DevOps Maturity. I’ll show early work on how we’re building with our customers cost metric models to determine DevOps total cost of ownership.

#### Mind the Gap: Put Ops in DevOps (Matthias Buchner)

The promises of DevOps are clear - speed delivery of services and applications make dev and ops teams more responsive and drive experiences that your customers value. However, too often the full potential is not realized because DevOps teams are focused much more on “dev” and not nearly enough on “ops”. Do you have CD pipelines pushing code to dev environments only, and have separate processes for production deployment? Too often, DevOps is implemented only halfway, focused on improving the upstream communication between dev teams and their business counterparts but then failing to adequately loop in the downstream testing and operations teams. In this talk, Matt Buchner of Flux7 shares lessons learned from working with hundreds of companies to not only deploy code but also infrastructure and configuration as code and lay out detailed next steps for closing the gap between dev and ops within your DevOps journey.

#### Monitoring Tools APIs (Peco Karayanev)

I am proposing a talk on doing a hands on deep dive exploring common monitoring Tools APIs. Will look at DataDog, NewRelic, Splunk, Sensu etc and how to squeeze data out of them. Light scripting will happen! If we get frisky, may even do some data visualiztion magic with D3!

#### Pick any Three: Good, Fast, and Safe. DevOps from Scratch. (Pete Cheslock)

If you ask ten people to define DevOps, you’ll likely get a dozen different answers. Somehow it’s 2018 and we still can’t agree on what DevOps is, only what it looks like. Many companies want all the benefits from DevOps without making any changes to their organization. The truth is that successful DevOps implementations require hard work over long periods of time.

DevOps at Threat Stack is a survival mechanism. We need to be lean and innovative or we’ll simply not exist as a business. When I say DevOps, I’m not talking about using Chef or deploying to AWS. I’m talking about optimizing early for the behaviors we wanted as an ops organization working with software developers. We focused on these efforts to get everyone working towards the same shared goals. We work to lower the risk of change through both the tools we created AND the culture we grew.

This is a story in 3 Acts. Each Act leads into the next one, the results compound the impact to the team. How We Engineer for Rapid Change Optimizing for Visibility Building Accountable Engineers

In this session, you will learn how Threat Stack turns ideas into reality, quickly and safely. We’ll go over how we design our telemetry system to support useful, actionable metrics and the steps we take to level up our engineers, giving them the ownership and accountability to own the applications they build. We’ll share what produced good results, what generated more trouble than it was worth, and what concrete ideas you can take back to improve how work gets done within your organization.

#### Stepping Up Your DevOps with Step Functions (Richard W. Boyd II)

Step Functions from AWS are a powerful tool that you can use to create state machines. By chaining together Lambdas and Actions with logic gates you can create complex, event-driven services that infinitely scale.

#### Mock All The Things - Creating Integration and Load Tests with One Command (Samuel Manzer)

Testing cloud-native distributed software architectures creates many headaches for developers.Accurately reproducing the production behavior of a modern application’s many dependencies in acontrolled CI/CD test environment is a time consuming and error-prone task. Mock All The Things(MATT) is a new tool that lets you create integration/performance tests from your application’s realtraffic with just a single command. MATT can then replay these integration tests in your CI/CDenvironment to ensure that your application always meets all functionality and performancerequirements. No more messing around with mocks of your dependencies or trying to run your entirestack on one box - MATT automatically creates any necessary mocks of your databases,downstream microservices, and any other networked dependencies.

MATT is an early-stage, single-developer project built by the presenter. This talk will feature a livedemonstration of  MATT by deploying it against an example social media website. The demo willillustrate how MATT can capture all inbound and outbound traffic from a docker container in realtime, then save this traffic for later replay as an integration test. It will also demonstrate how MATT’sreplayer engine can automatically identify reproducible test ‘flows’ from a messy network dumpcontaining traffic from many different clients. Feedback will be sought from the audienceconcerning prioritization of improvements to this new technology.

#### Kubernetes 201: You have Kubernetes up and running, now what? (Victor Trac)

There are lots of guides and talks about getting Kubernetes installed and running, but there isn't a lot of information about logical next steps. This is a practical talk that covers common next steps like setting up access controls, metrics, logging, and more, based on experience running Kubernetes in production at multiple companies. This talk assumes a basic understanding of what Kubernetes is and some familiarity of Kubernetes resources.

#### FAKE NEWS! It turns out that your shell scripts can get the job done. (Alex Honor, Lee Thompson)

We all love higher-level automation tools. But, despite everyone’s efforts, shell scripts are still a fact of life and will be for the foreseeable future. This talk is about how to avoid the common pitfalls of shell scripts. To prove the point, we’ll take some typical bash scripts and show how to use the open source rerun framework to instantly improve modularity, standardize option handling, automatic releases triggered by continuous integration, and make your scripts test-driven (yes, test-driven bash!). Then we’ll use open source Rundeck to add self-service interfaces (GUI, CLI, API), dispatching to remote nodes, fine-grain security controls, and standardized logging. Take you scripts from outcasts to heroes in minutes.