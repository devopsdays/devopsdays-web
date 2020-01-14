+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Practical Capacity Planning using Prometheus"
Type = "talk"
Speakers = ["andrew-newdigate"]
Speakerdeck = "https://speakerdeck.com/suprememoocow/devopsdays-cape-town-resource-saturation-monitoring-and-capacity-planning-on-gitlab-dot-com"
Youtube = "YHV0qkKBz7o"
+++

GitLab.com’s monolithic Rails application experiences high week-on-week traffic growth. To ensure availability, GitLab’s Infrastructure team track and plan ahead in order to avoid hitting capacity limits in the application, whether these limits be CPU, database connection pools, memory, storage or any number of other finite resources. Hitting these limits could result in hours, or days, of degraded service while workarounds are put in place.

With this in mind, the team set about building a set of tools on top of Prometheus recording rules and alerts to provide them with the information they need to be sufficiently forewarned, up to a month in advance, of potential resource saturation issues.

If you’ve ever felt that you’re reactively responding to resource saturation issues, this session will provide practical examples of how we’re building resource planning into our SRE team workflow. We’ll be presenting our open-source solution and explaining how it works for us.
