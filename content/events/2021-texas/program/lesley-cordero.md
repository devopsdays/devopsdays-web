+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Fitting Site Reliability & Developer Experience Into Team Priorities"
Type = "talk"
Speakers = ["lesley-cordero"]
sharing_image = "lesley-cordero.png"

+++
 
This talk will focus on how you can use principles & metrics from Site Reliability teams and Developer Experience teams to create a culture of technical excellence, high velocity, and psychological safety.

When thinking about metrics that guide technical & team strategy, there are two underlying priorities that ideally should align towards one goal: system and engineering team health. Metrics relating to system health provide insight on how stable the user experience is, whereas engineering team health metrics provide insight on the experience of the engineers building these systems.

Site Reliability Engineering (SRE) defines the guiding principles and processes for ensuring system health, whereas Developer Experience (DUX) is less about the actual system and more about the tools, processes, and productivity levels related to the development cycle of that system.

Some notes I’ll touch upon in the talk include.
<ol>
1. Shifting towards a culture of Site Reliability Engineering (SRE)

<ol>
1.1 Starting with Observability: Setting metrics without supporting data makes iterating towards accurate and helpful metrics difficult. Before settling into this iterative process, teams will need to start by making sure we have necessary data to keep this process productive.

<ol>
1.1.1. Service Metrics: Granular dashboards that record application metrics, platform metrics, and system events should be priorities both initially in the process (to address backlog) and during our actual feature development cycles moving forward.

1.1.2. Event Logs & Traces: Being able to thoroughly understand the specifics of what’s happening in our system helps with improving system performance by providing logs and traces across different levels of our system. Granularity is also important here since thorough analysis of event logs and log metrics is needed to debug issues.
</ol>
1.2 Observability to Metric Iteration: After establishing a baseline for setting metrics (or determining we already have enough context to begin), we can prioritize setting the actual metrics and their accompanying priorities.

<ol>
1.2.1 Better Insights: These different data pipelines should help us determine where bottlenecks or hotspots exist within our application so that metrics and prioritization frameworks can be efficiently determined.

</ol>

1.3 Processes for Continuous Improvement

<ol>
1.3.1 Release Engineering: The work towards establishing metrics should inform feature development processes, so that teams can achieve high velocity and technical stability. Concretely, this means setting up processes to get ready for release: risk management and assessment, improving deployment processes, etc.

1.3.2 Stability vs Feature Velocity: Release engineering will bring questions about how we should balance feature development versus ensuring our systems are stable is a trade-off we’ll need to decide and be aligned on as a team. This balance can always be re-evaluated, but we should ensure that we make this balance transparent and have a process for revisiting trade-offs.
</ol>
</ol>
2. Prioritizing Developer Experience (DUX): As with this priority towards SRE culture, the different components of this area should align towards the goal of system and engineering team health.

<ol>
2.1. Developer Productivity: “Productivity” can be a pretty vague and large term, so it’s best we first define it. Tentatively, we should think of developer productivity as an accumulation of the different inputs of the feature development cycle.
<br/>
2.2. Onboarding Experience: A developer’s first introduction to a system is during onboarding time, and it’s a crucial time to begin establishing context and familiarity with the different services. Bad onboarding experiences can breed gaps in knowledge and slow down the growth of those engineers, so ensuring a positive and productive onboarding experience is both good for keeping engineers productive and happy from the very beginning.
<br/>
2.3. Context Gathering: Especially during the initial phase of the development cycle, engineers spend a lot of time gathering context to properly scope and design what a given feature will encompass. If context is being easily lost or siloed, we spend unnecessary time ramping up and hitting information bottlenecks for each project.
<br/>
2.4. Dealing with Interrupts: Since on-call rotations easily become a painful experience when systems are unstable, evaluating pain points should be done consistently. This also means ensuring that the work with respect to monitoring & alerting doesn’t lead to noise and information overload for folks who are on call.
<br/>
2.5. Happiness & Psychological Safety: Metrics implementation should guide us towards technical excellence - it isn’t meant to introduce unhealthy obsession or pressure about meeting these metrics. This is important to keep in mind especially as we begin this process where we’ll likely get things wrong frequently - these should simply be opportunities for us to learn and improve.
<ol>
2.5.1. While there will likely be owners of ensuring we have necessary processes and metrics iteration to meet SRE metrics, shifting towards SRE culture both provides alignment as a team and an opportunity for us to collaborate as a team.
</ol>
</ol>
</ol>