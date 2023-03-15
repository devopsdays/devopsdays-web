+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Security of Your CICD Pipeline in 2023"
Type = "talk"
Speakers = ["sharon-goldberg"]
+++

It turns out that there are different ways to architect a CICD pipeline that might be more or less sensitive to a breach.  And this just doesn’t just come down to whether you use a cloud-hosted CICD service (eg CircleCI or Travis), or if you self host your runners (e.g. using a Jenkins server). What really matters is (1) what kind of credentials the runner has access to (2) how hard it is to rotate those credentials, and (3) whether the runner has the unilateral ability to access infrastructure and deploy code.    To illustrate these points I’ll walk through a few different architectures that I’ve seen in the wild, discuss their strengths and weaknesses, and finally present some neat tricks that everyone should know about, including using sigstore to harden your build pipeline.
