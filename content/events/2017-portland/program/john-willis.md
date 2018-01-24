+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Source-based Immutable Hyper-Converged Infrastructure"
Type = "talk"
Speakers = ["john-willis"]
+++


Ok, now that I have your attention let me explain what I mean. Imagine you could build a fully converged (compute, network and storage) multiple component container based service from one source controlled YAML file. Also included in that definition you could add complex deployment policies such as placement, replicas, scaling and restart constraints as defined with that single source controlled YAML file. Then imagine you can defines a specific JEOS Just Enough Operating System (JEOS) operating system definition for that same service that is also defined from a single source controlled YAML file. The YAML based operating system is delivered through the the pipeline as an immutable artifact along with the other immutable service artifacts. One commit that will fully delivery this end to end immutable service. This presentation will describe the process of using some of Docker’s latest tools including:

Linuxkit Docker Stack Docker Compose LIbnetwork Docker Swarm

Last but not least we will demonstrate this service from a single source controlled environment where it can be completely deployed with a single commit as an completely automated continuous delivered service. If the “demo” gods allow we will also show that we can update the service with one single commit.
