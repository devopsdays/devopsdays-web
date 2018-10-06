+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Scale search powered apps with Elasticsearch, k8s and go"
Type = "talk"
Speakers = ["maxime-boisvert"]
+++

You are wondering how to move Elasticsearch from metal to the cloud? Come listen to how Shopify moved away from data centers to Kubernetes by using CRD automation in Golang. You will learn about stateful Kubernetes components and how we use them to run small and large scale production clusters.

Elasticsearch is a scalable text-search engine that replicates its index onto many instances. Managing many clusters can be daunting as their configuration drifts and their intrinsic data distribution diverges. At Shopify, we built an internal search operator with Elasticsearch, written in Golang and using Kubernetes as its foundation to allow deployment on k8s fleets, like Google Cloud. I’ll share lessons learned and benefits of this system.
