+++
City = "Dallas"
Year = "2016"
date = "2016-09-15T09:00:00-08:00"
title = "Shazad Brohi"
type = "talk"
+++

**Title:**  Orchestrating Independence: Our journey from an orchestration script to zero-downtime, scalable orchestration of changes 

**Description:**

You’ve automated the provisioning of your infrastructure with a configuration management solution. But now you have to manage how that interacts with other changes in the system. Is it time to write a bash script or use an orchestration feature of your solution that, let’s face it, looks a lot like a bash script?

At NCR, we went in a different direction and came up with a model to orchestrate changes to infrastructure in a way that eliminates downtime and reduces dependency between nodes, opening the possibility for red/green deployments and more. We’ll talk about considerations when approaching orchestration, how we designed our model with Hashicorp Consul and Chef, and the benefits we’ve seen from doing so.