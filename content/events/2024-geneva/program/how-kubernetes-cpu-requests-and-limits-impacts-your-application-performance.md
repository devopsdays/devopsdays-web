+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How Kubernetes CPU Requests and Limits Impacts Your Application Performance"
Type = "talk"
Speakers = ["ara-pulido"]
+++
When deploying an application to Kubernetes, each container in a pod should define CPU requests and limits. It is commonly understood how CPU requests affect the scheduling of your pod and the future pods in the same node.

But outside scheduling, the way CPU requests and limits impact your running application is more confusing and less commonly known. Are requests only used at scheduling time? How will limits affect my application latency? How do you select a good value for requests and limits?

In this hands-on workshop, you will be using an example demo application, deployed to your own Kubernetes cluster, to help clarify some misconceptions about CPU requests and limits including how requests are used beyond scheduling and how both requests and limits can impact the performance of your application. You will gather relevant metrics from your cluster and application to understand those effects, minimize them, and help you select good values for both CPU requests and limits.
