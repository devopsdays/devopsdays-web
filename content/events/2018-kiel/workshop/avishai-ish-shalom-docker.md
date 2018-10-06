+++
Title = "Docker from Scratch "
Type = "workshop"
Speakers = ["avishai-ish-shalom"]
aliases = ["/events/2018-kiel/workshop/avishai-ish-shalom-docker/"]
+++

Docker is very popular these days, but how many of us are really familiar with the basic building blocks of Linux containers and their implications? What's missing in the good ol’ chroot jails? What are the available Copy-on-Write options and what are their pros and cons? Which syscalls allow us to manipulate Linux namespaces and what are their limitations? How do resource limits actually work? What different behaviours do containers and VMs have?

In this hands-on workshop, we will build a small Docker-like tool from O/S level primitives in order to learn how Docker and containers actually work. Starting from a regular process, we will gradually isolate and constrain it until we have a (nearly) full container solution, pausing after each step to learn how our new constraints behave

[https://github.com/fewbytes/rubber-docker](https://github.com/fewbytes/rubber-docker)
