+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Don't Forget the Humans"
Type = "talk"
Speakers = ["ana-margarita-medina","julie-gunderson"]
+++

Well, CircleCI was breached. Many teams spent a large part of January rotating secrets and looking for indicators of compromise (IoCs). I think this breach is a really big deal, because it is really exposing the (often massive) attack surface created by our CICD pipelines. I think it’s time that we, as a community, sit down and think through how we want to architect and secure our CICD pipelines.

This isn’t just about CircleCI. The fundamental problem is that a CICD pipeline needs the power to deploy code into your infrastructure. (After all, the D in CICD is for Deploy!) And deployment requires a high level of privilege, including the ability to SSH into servers, to talk to APIs, to push code into containers, to spin infrastructure up and down, and a bunch of other sensitive stuff.  And if your CICD pipeline gets compromised, all those privileges fall into the hands of an adversary. Which means that an adversary can push malicious code into your infrastructure.  ‘

I think this really is an opportunity to look at any CICD pipeline, be it Jenkins, Travis, AWS Codebuild, GitHub actions, or whatever, and think critically about the security risks it creates for our organization.  And what better time to do that, then right after a breach.

We spend all day thinking about our technical systems, but we often neglect the needs of our human systems.  *********** will walk attendees through the principles of system reliability and how to not only apply them to their systems but their personal life to prevent burnout and enjoy their weekends more.

In this talk, attendees will learn how to apply incident response and blameless practices into their everyday activities.  Attendees will also walk away knowing how to build reliable socio-technical systems and some tips to apply them to the workplace.
