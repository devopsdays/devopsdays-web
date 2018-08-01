+++
City = "Zurich"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "A Hands-On Introduction to DevOps with Cloud Foundry"
type = "talk"
speakers = ["mathis-kretz"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

I will provide a hands-on introduction to working with Cloud Foundry, focussing on DevOps 
aspects and explaining how a PaaS solution is an ideal platform for working in DevOps 
mode. I will first introduce a sample architecture consisting of three components: an API 
written in Node storing data in a MongoDB instance and sending events to a RabbitMq queue. 
A UI written in React, consuming the API and a mailer reading messages from RabbitMq and 
sending mails via an external mail provider (Mailgun). Working with this example, I will 
then go through the following topics hands-on in Cloud Foundry:

1. Basic concepts: Orgs, Spaces, Accounts, Roles
2. The command line interface
3. Services
4. Apps
5. Pushing apps
6. Service binding
7. Routes
8. Scaling an app
9. Zero-downtime deployment

At the end I will add some time for Q&A.
