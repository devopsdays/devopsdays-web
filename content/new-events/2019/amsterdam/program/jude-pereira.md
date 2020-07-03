+++
description = ""
title = "Abstracting away Kubernetes with Storyscript"
type = "new-talk"
aliases = [
        "/events/2019-amsterdam/program/jude-pereira/",
]
speakers = [
        "jude-pereira",
]
+++
In this workshop, we'll try out a fresh microservice choreography platform (open source and part of the CNCF), which sits on top of Kubernetes, and can create clusters, micro scale containers automatically. This is all done via Storyscript, a language for describing how data moves across services.

Think containers as being first class entities of the language, whose output can be interacted with as variables.

A quick example of Storyscript used to build a weather bot for Slack:

slack bot as bot
when bot hears pattern: "/weather/" as message
location = corenlp location text: message.text
fc = accuweather forecast location: location
slack reply thread_ts: message.thread_ts text: fc

The story above starts three containers from the Docker Hub (slack, corenlp, accuweather), and manages the movement of data between them.