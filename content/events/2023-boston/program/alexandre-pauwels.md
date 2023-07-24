---
title: "DevSecOps Ain't That Hard, a Framework"
Type: "talk"
Speakers: ["alexandre-pauwels"]
---

#### Intro

With this talk I hope to break down and disprove three major reservations people have about DevSecOps:

1. It's hard
2. It's expensive
3. It's bespoke

Having led major shift-left transitions at several organizations, I know that DevSecOps is not only achievable by all, it should be the default, something that can be had immediately, not something you build out eventually. In 2022 I set out to prove this by building, at home and on my dime, a real, working implementation of a "generic" DevSecOps cloud, meaning something that could be immediately applicable to any number of cloud-forward organizations, and to do it as cheaply as possible, using left-over cloud compute and open-source products. I'd like to share the conclusions learned from this project and in doing so describe a general framework which demystifies DevSecOps and the real steps you'll need to undertake to achieve it yourself, organized by the three misconceptions described above.

#### It's hard

I'll describe how to break down and model an enterprise DevSecOps cloud architecture into its component parts, what each part brings to the table, and how to bring those parts into a cohesive whole that enables the secure and reliable creation of any number of services.

#### It's expensive

I'll explain what components of a cloud architecture will be your most expensive and the mitigations you can implement to reduce that cost. This will include an overview of which open-source products can be leveraged with maximum effect to eliminate your SaaS bills, and how to employ automation to abstract out the vast majority of the maintenance and support work typically associated as a downside of self-hosted open-source.

#### It's bespoke

Most organizations want the same thing, yet each one implements it from scratch and slightly differently. I'll show that with a little bit of IaC templating you can genericize the principles described in the previous two sections into a fully-functional architecture that can be deployed anywhere.
