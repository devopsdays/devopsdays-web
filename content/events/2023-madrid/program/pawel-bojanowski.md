+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Canary and Blue-Green Argo Rollouts made possible in a multi-cluster environment"
Type = "talk"
Speakers = ["pawel-bojanowski"]
Youtube = ""
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

**Argo Rollouts** recently gained popularity, thanks to providing a standardized framework for the **Blue-Green** and **Canary** Kubernetes deployments and seamlessly integrating with metric providers (such as Prometheus), ingress controllers and services meshes to run automated analysis on newly deployed app versions. This is a big improvement over using Kubernetes Deployment API, because it unlocks the multi step rollout process with running automated analysis and gradually switching production traffic to the new version, without the need of customizing application codebase. 

At the same time, many organizations need to deploy each service across multiple clusters, to ensure high availability and disaster resilience, in case of cloud provider region/zone outages. This is a challenge for DevOps and Platform Engineers, because the Argo Rollouts controller, similar to most of the Kubernetes controllers, is designed to operate on a single cluster. In this talk, **I will present how to augment Argo Rollouts using a Multi-Cluster scheduler (such as Nova or Karmada), to achieve automated Canary (or Blue-Green) rollouts on more than one cluster**. We will look at a few different approaches on how connecting your production, staging and test clusters to the management control plane (such as Nova) can facilitate the process of safely deploying and testing your app in each of these environments, all the way to the safe production deployment.


