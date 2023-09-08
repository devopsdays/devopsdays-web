+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Mean Time To SRE: A DevOps story from adidas"
Type = "talk"
Speakers = ["tiffany-jernigan"]
Youtube = ""
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

One might naively think that to deploy a production app on Kubernetes, all one needs is a Kubernetes cluster. Indeed, before going to production, we'll need a Kubernetes cluster, and therefore, we'll need to make a few decisions: on-premises or on cloud? Managed or self-hosted?

But there is way more to it because our new cluster will almost always require a few additions before being truly production-ready. Even if we choose a state-of-the-art managed cluster from a leading cloud provider, we still need to add something to handle logging and metrics. Supporting Ingress resources or Network Policies can also require extra work; as does managing persistent volumes or inbound traffic when running on-premises.

Finally, while most of us used commands like "kubectl run" or "kubectl apply" to run our first Kubernetes containers and workloads, going to production requires a few extra tools to tailor our YAML manifests to various environments (e.g. kustomize, Helm, or Carvel), and automate its deployment (e.g. ArgoCD, Flux).

The goal of this talk is to give us a production-readiness checklist. Without being exhaustive, this checklist will bring awareness to the gap that exists between Kubernetes "cluster" and "a production cluster", and give solid leads about how to bridge that gap.


