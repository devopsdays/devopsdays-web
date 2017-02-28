+++
date = "2016-05-04T12:14:21-07:00"
type = "talk"
title = "(Re)Implementing Continuous Deployment at the Norwegian Trekking Association (DNT)"
+++

**Abstract:**
"<i>Just SSH into the production server, go to /usr/src/app, find a file named core.php, and change the $TARGET_THRESHOLD to 100</i>", well maybe not exactly that, but you get the gists. This was how we rolled when I first started at DNT – the ultimate continuous deployment! Right?! The application that could only be run (successfully) on the production server, and without any version control.

This is the story about how DNT went from making changes directly on the production server to fully immutable infrastructure with Docker Containers, and also moved much of it's monolithic application to a micro-services oriented architecture. I will go through the different stages on how we locked down the production environment to make it reproducible to all developers and how we gradually made it back to where we could (safely) release 20+ times a day to production.

**Speaker:**
Hans Kristian Flaatten is an Open Source and Open Data evangelist. He is an acting member of the Node.js Foundation where he manage the test and release infrastructure for official Node.js versions, as well as the official Docker Image for Node.js.

He is a Senior Systems Developer / DevOps at the Norwegian Trekking Association (Norway's biggest outdoor activities organisation) where he have lead the transition to a microservice oriented architecture on immutable infrastructure and Docker Containers. He have also spear headed DNT's initiative on Open Data through <a href="http://ut.no/">UT.no</a> and Nasjonal Turbase.
