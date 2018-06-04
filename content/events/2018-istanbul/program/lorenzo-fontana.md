+++
City = "Istanbul"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Distributed debugging techniques for Kubernetes clusters"
type = "talk"
speakers = ["lorenzo-fontana"]
+++

Containers and Kubernetes are two very important innovations, they allow us deploy our applications by defining the distribution and runtime formats so that we can run them in a distributed cluster after trying almost the exact same kind of interaction in a local environment with the same API primitives. All this requires skills, tooling and deep knowledge of what are the differences between distributed and not distributed systems. And with knowledge and usage increases the awarness that distributed systems make easier to scale and orchestrate applications while functioning as enabler of distributed applications themselves but that this comes with the cost of decreased control and ability to introspection. The main point about distributed debugging is that it's not difficultier but that one must be trained and ready to do it. Having a working observability toolchain is usually enough to know that a problem exists and that something is going beyond normality but bugs are not deterministic, they don't follow rules and there's no tool that can by target any problem. Good observability tools can give important pointers and be part of the debugging toolchain and having the skills needed to master them can lead to faster investigations. This investigative work is normally hard in single machine systems and even harder in distributed systems, in this talk, Lorenzo Fontana will show some possible strategies to recognize the type of problem, discover it's root cause and iterate over possible solutions and  hypothesis. 