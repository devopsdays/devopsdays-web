+++
date = "2016-07-08T18:12:13+02:00"
title = "proposals"
type = "event"
+++
  {{< cfp_dates >}}

<hr>
This page lists the talk proposals and workshops we have received.

### Avishai Ish-Shalom

Backend Team Leader @ Wix.com

Avishai is a veteran operations and software engineer with years of high scale production experience. Currently masquerading as an engineering manager, Avishai is leading a team of software engineers at Wix.com core services group. In his spare time, Avishai is spreading weird ideas and conspiracy theories like DevOps and Operations Engineering.

Q: Why do you think we should take you as a speaker? What can you contribute to make this event unique?

“I have a tendency to touch topics most people ignore, sparking interesting conversations”

## The Missing user stories

In almost every software project, in almost any company, some aspects of the software are neglected: logs are crappy, metrics are badly designed, backups are hard, customer support tooling is an afterthought. Have you ever seen "logging" in the feature list? or "deprecation" for that matter? As almost every software service needs these, why are they often overlooked? Why are some requirements not defined as features? It turns out that when we design our products we ignore certain categories of users, and their use cases are ignored until very late in the life of the product; these are “The missing user stories” The talk will present various user stories, such as "As a Developer I would like to search logs so that I can debug a user transaction" and expand on what is needed to support that story. By doing so we will see how this approach promotes better software and better services.

## To err is human: Introduction to modern safety thinking

In the last 40 years, the philosophy of safety and reliability has changed dramatically in the world of high risk industries. This has prompted many organizations in various risk-prone fields to adopt new methods and processes and sometimes even undergo a radical cultural and managerial change. However, the software industry remained largely oblivious of these advancements despite the similarities in failures and systems. After all, most systems today are software managed whether they run a nuclear reactor or a website builder. We’re used to think of “Failure” as something exceptional, to be handled in a special way or avoided: If only we did that, If only we didn’t do this… Things happen for a reason, they have a Root Cause. This talk will present the major concepts of new-era safety thinking, namely the move from Safety I and “Human Error” to Safety II and Systems Thinking and help you start your Resilience Engineering journey.

## Debugging: It's science, dummy.

Are you one of those "gifted debuggers" that everyone turns to when they need to solve a difficult problem? Great! This talk isn't for you. For the rest of us, debugging is often considered a mysterious trait that some engineers were born with, alas, some simply haven't. This talk is here to bust that myth. It calls "bullshit" on the gifted-debugger myth and claims that with well-structured methodology and a couple of simple tips, we can all master debugging and stop using trial and error (and other witchcraft tactics) to find the cause of our problems. This methodology has served me well over the years and help me solve difficult problems, and will hopefully serve you as well.

Twitter: @nukemberg

<hr>

### Timo Pagel

DevOps Security Consultant

Timo Pagel has been in the IT industry for over fifteen years. After a career as a system administrator and web developer, he now advises clients on DevOps security with the focus on security test automation for software and infrastructure. In his freetime he teaches "Security in Webapplications" at the University of Applied Sciences Kiel.


“Security is often an afterthought while introducing DevOps. This talk will help the audiance to understand how to integrate security in DevOps.”

## Security in DevOps-Strategies

From a startup to a multinational corporation the software development industry is currently dominated by agile frameworks and product teams and as part of it DevOps strategies. It has been observed that during the implementation, security aspects are usually neglected or are at least not sufficient taken account of. It is often the case that standard safety requirements of the production environment are not utilized or applied to the build pipeline in the continuous integration environment with containerization or concrete docker. Therefore, the docker registry is often not secured which might result in the theft of the entire company’s source code.  The Generic DevOps-Securitiy Maturity Model shows the security measures which are applied when using DevOps strategies and how these can be prioritized. With the help of DevOps strategies security can also be enhanced. For example, each component such as application libraries and operating system libraries in docker images can be tested for known vulnerabilities. Attackers are intelligent and creative, equipped with new technologies and purpose. Under the guidance of the forward-looking Generic DevOps-Security Maturity Model, appropriate principles and measures are at hand implemented which counteract the attacks.

<hr>

### Praveen Shukla

SRE at Go-Jek India 

Praveen Shukla is a systems engineer at gojek. He is a linux enthusiast, he loves exploring and learning things like infrastructure automation, monitoring, development, system reliability. 

“I will be sharing experience about growth at gojek in term of traffic and how we handle such a huge load with best solutions and best practices”

## Reliability At Scale 

It’s always a tradeoff between stability and velocity when it comes to optimizing the business outcome. In this talk, I will share my experience in stabilizing the system as go-jek grew from ~100+ instances to ~5K+ and growing instances. In this talk, I will start with the description of the go-jek infra when it was small. The tools and practices that we followed to serve the needs of that time. When the organization was small velocity took precedence. We started adding simple solutions like CI/CD, configuration management, basic monitoring, alerting and basic automation. It enabled the organization to deliver new features with speed and stability. Things were usually simple. Less number of services and components to monitor. Everyone is responsible for everything. Each and every alert are usually actionable by most of the people. Then I’ll talk about the changes that we brought to tackle such issues. Will discuss the new tools and applications we created and the problems they solve. This talk will revolve mostly around the DevOps culture and SRE responsibilities. How both these things are closely connected and how they evolve with scale.

Twitter: @_praveenshukla

<hr>

### Siamak Sadeghianfar

Technical Product Marketing Manager, OpenShift

Siamak Sadeghianfar is a Principal Technical Product Marketing Manager for OpenShift at Red Hat and strives to educate IT professionals, customers and partners on all aspects of application development with containers and how new technologies can be used to solve business problems quicker and with less friction. A developer at heart, he is passionate about application development lifecycle, processes and architecture and has 15+ years of experience in the IT industry.

“I'm a DevOps evangelist at Red Hat and regularly talk at developer, analyst and technology events with a purpose of educating the industry on what I learn from speaking with various Red Hat customers about their DevOps journeys.”

## Ten Ways Kubernetes Enables DevOps

DevOps adoption has increased rapidly over the last few years and with it the guidelines, practices, and tool that support this journey. Nevertheless, finding the right path towards DevOps is challenging for most organizations. In this session, we will discuss why containers and container orchestrators have proven to be a key enabler for DevOps practices with examples from real-world implementations and furthermore, you will learn about 10 ways that Kubernetes is helping teams to get ahead in their DevOps initiatives.

## The Path to DevOps in Five Steps

DevOps adoption has increased rapidly over the last few years and with it the guidelines, practices, and tools that support the DevOps principles. Nevertheless, finding the right path towards DevOps is challenging for most organizations. In this session we will discuss: - Where to start your DevOps journey - Key factors in successful DevOps adoption - Organizational tweaks for enabling DevOps - Steps taken by high-performing teams in the enterprise

Twitter: @siamaks

<hr>

### Thiago Assuncao de Faria

DataOps & AI Lead

As a Mathematician and Statistician, he always enjoyed data modelling, predicting, data sharding algorithms and implementing data products. He worries about the Ops part of AI, joined the devops community (organiser of devopsdays Amsterdam) & co-founded itnext.io. Excited about the business implications of his IT endeavours and instigated by "The Goal" by Eliyahu Goldratt, Thiago is always looking for actual consequences of his products & diminishing time-to-market.

“Time-to-market is one of the most effective ways to confirm your assumptions - fail fast, fail often. But ML algorithms & AI products usually take a lot of time to be finished! The audience will leave this session rethinking how they build AI products, how they could integrate configuration tools into it and put their ML processes in check.”

## Can the AI hype & ML algorithms harm your DevOps initiatives?

AI is such a buzzword, with its futuristic implementations and sophisticated machine learning algorithms (Hello, Deep learning!). We are using ML when we need external data to reach a working product because it would be impossible to solve it with the regular for/if/loops. What are the next steps? Moreover, what about Test, Release and Deployment? We will dive into AI implementations, its achievements & mistakes to discuss DevOps, Agile, ML & AI.

Twitter: @thiagoavadore

<hr>

### Dirk Lehmann

Cloud Quality Coach

Dirk is a Cloud Quality Coach at SAP with focus on Continuous Delivery and DevOps techniques. In his former role he established the first daily delivering product at SAP. Dirk is a frequent speaker at conferences on Continuous Delivery and DevOps topics.

“I think I can tell something about DevOps in large enterprises and the challenges that come along with that. Oh, and I'm pretty enthusiastic about DevOps and I hope/think/... this shows when I'm on the stage.”

## Trust as foundation of DevOps

DevOps requires a cultural change. But how can a DevOps transformation work (esp. in large enterprises)? Observing many teams at several occasions Dirk noticed that trust can be seen as the foundation of DevOps. Giving examples and concrete actions this talk shows you how to foster trust in your team, so that applying DevOps becomes a success. 

Twitter: @doergn





