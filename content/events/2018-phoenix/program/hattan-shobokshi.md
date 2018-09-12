+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Automated Dev Environments with Docker"
Type = "talk"
Speakers = ["hattan-shobokshi"]
+++

A vital part of the development process is having different environments to test on. These are often static environments such as dev, qa, stage and prod. While this is useful, these environments are often statically built and long lived. With docker, we can augment this with the concept of tear up / tear down environments. These are environments running an application and created on demand. The result is a running web application, built from scratch using a specific branch and deployed to a new URL. The goal is to allow developers to specify a name, branch and have the automation build and deploy everything in under 10 minutes.

In this presentation, I'll go over how to build such a system. We'll build a jenkins job to build and deploy a sample asp.net core application to a kubernetes cluster. We'll go over jenkins basics, kubernetes fundamentals and tie it all together to create a compelling developer experience. While we will be using asp.net core for this demo, the concepts will work for any containerized application.

This will be a code heavy and hands on session where we start with a blank slate and automate the process end to end, with no human intervention other than kicking off the process. We'll discuss how this fits into the developer life cycle and how it can help with testing and overall application confidence.
