+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How to secure your CICD pipeline in 2023"
Type = "talk"
Speakers = ["sharon-goldberg"]
+++

In January, CircleCI was breached. Many teams spent a large part of January rotating secrets and looking for indicators of compromise (IoCs). I think this breach is a really big deal, because
it is really exposing the (often massive) attack surface created by our CICD pipelines. I think it’s time that we, as a community, sit down and think through how we want to architect and secure our CICD pipelines. Because this isn’t just about CircleCI. The fundamental problem is that a CICD pipeline needs the power to deploy code into your infrastructure. (After all, the D in CICD is for Deploy!) And deployment requires a high level of privilege, so if your CICD pipeline gets compromised, all those privileges fall into the hands of an adversary.

It turns out that there are different ways to architect a CICD pipeline that might be more or less sensitive to a breach. And this just doesn’t just come down to whether you use a cloud-
hosted CICD service (eg CircleCI or Travis), or if you self host your runners (e.g. using a Jenkins server). In this talk, we walk through a few principles you can use to secure your CICD pipelines, some of which are based on the NIST 800-702 zero-trust pillars and some of which are based on practical experience. To illustrate these points I’ll walk through a few different architectures that I’ve seen in the wild, discuss their strengths and weaknesses, and finally present some neat tricks that everyone should know about, including using one-time secrets, OIDC, github signed commits and sigstore to harden your build pipeline.
