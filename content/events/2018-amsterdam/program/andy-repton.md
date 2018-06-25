+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Best practise Kubernetes"
Type = "talk"
Speakers = ["andy-repton"]
aliases = ["/events/2018-amsterdam/program/andy-repton/"]
youtube = ""
slideshare = ""
slides = ""
+++

Have you started to use Kubernetes? Still unsure about what the best practise is? This workshop will go through the current best practise methods of deploying applications on Kubernetes, including security, high availability and tips and tricks on using kubectl, helm and CI/CD with k8s.

The workshop will comprise of everyone getting their own Kubernetes cluster on AWS. We’ll look into the differences between deployments, replica sets and stateful sets, and deploy an application with each to demonstrate when to use each one. We'll demo why Liveness and Readiness probes are a must, and how not using anti affinity can cause challenges to your 'Highly Available' application. Finally, we'll take a look at creating a CI/CD ServiceAccount and lock it down to a namespace using RBAC.

Towards the end, we'll discuss in a deep dive how services actually reach the pods in the cluster, and some common mistakes made when securing a Kubernetes cluster. Bring your questions! The workshop is aimed at people who have used kubernetes in the past, but still have questions on how the internals work and how to best run applications inside the cluster. The level of the workshop will be adjusted based on the attendees experience on the day, but is expected that attendees have used Kubernetes before.

Please ensure you have kubectl, helm and kops installed on your laptop or virtual machine.
