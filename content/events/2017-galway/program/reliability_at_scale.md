+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Reliability at Scale"
Type = "talk"
slideshare = "https://www.slideshare.net/praveenshukla6/reliability-at-scale-82220023"
Speakers = ["praveen-kumar", "sankalp-singh"]
+++

<b>Abstract:</b>
<p>It's always a tradeoff between stability and velocity when it comes to optimizing the business outcome. In this talk I will share my experience in stabilizing the system as gojek grew from ~100+ instances to ~5K+ and growing instances.</p>

<b>Talk Description:</b>
<p>In this talk I will start with the description of the gojek infra when it was small. The tools and practices that we followed to serve the needs of that time.</p>

<p>When the organisation was small velocity took precedence. We started adding simple solutions like CI/CD, configuration management, basic monitoring, alerting and basic automation. It enabled the organisation to deliver new features with speed and stability. Things were usually simple. Less number of services and components to monitor. Everyone is responsible for everything. Each and every alerts are usually actionable by most of the people.</p>

<p>Then I'll talk about the shortcomings that we faced once the infrastructure grew further. When business flourished, infrastructure became large and the number of people multiplied. The solutions we implemented earlier were not sufficient anymore. We started to face issues like alert getting lost, not getting alerts to a right person, too many people getting too many pagers, who is responsible to take action on a particular alert. And hence it resulted in major outages and serious business loss.</p>

<p>Then I'll talk about the changes that we brought to tackle such issues. Will discuss about the new tools and applications we created and the problems they solve.</p>

<p>This talk will revolve mostly around the devops culture and SRE responsibilities. How both these things are closely connected and how they evolve with scale.</p>
