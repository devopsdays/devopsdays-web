+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Authorization: the next platform service"
Type = "talk"
Speakers = ["ronen-hilewicz"]
+++

Microservices are great, but we all know what happens when each delivery
team chooses its own tech stack. Platform teams are charged with getting
leverage and reuse for "common concerns" across microservices.  We
already do this successfully for deployment, monitoring, logging, and
service mesh. The next logical step is providing a common abstraction
for identity and access.

Identity is an obvious one - you need the caller's identity flowing
through the system, and we have mature technology for that - OAuth2 and
OIDC. Access is just now getting the attention it deserves.

This talk will focus on the benefits of providing a common authorization
layer, based on three principles: fine-grained, policy-based, real-time.
We'll introducefeature Topaz, an open source authorization solution that
can be deployed as a sidecar or a microservice in your environment, to
provide a common authorization layer for your cloud applications and
APIs.
