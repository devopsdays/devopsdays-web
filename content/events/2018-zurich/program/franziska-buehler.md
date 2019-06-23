+++
City = "Zurich"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Web Application Firewall - Friend of your DevOps Chains"
type = "talk"
speakers = ["franziska-buehler"]
youtube = ""
vimeo = "271451246"
speakerdeck = "https://speakerdeck.com/dodzh/web-application-firewall-friend-of-your-devops-chains-franziska-buhler"
slideshare = ""
slides = ""
+++

A Web Application Firewall may cause fear that it doesn't fit into the DevOps methodology.
But what if a WAF is involved very early in the DevOps process and not just at its end?

The problem is that when a WAF is added to production, the impact on the application is
tested too late. Application developers get extremely late feedback and the WAF can
probably break the application.
I will show a way how to integrate a WAF and its testing into the deployment pipeline.
A WAF is an opportunity to automatically test the application and its security with fast
feedback loops.
It should already be an integral part of the application testing during the continuous
integration and before the application can go to release.

The audience will also learn about the Web Application Firewall ModSecurity and its Core
Rule Set. It is the first line of defense against web application attacks, like those
described by the OWASP Top Ten.
The Core Rule Set is mentioned as one of the possible precautions against
A10:2017-Insufficient Logging & Monitoring.
