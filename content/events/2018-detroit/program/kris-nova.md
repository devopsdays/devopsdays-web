+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "You can't have a cluster !$& without a cluster"
Type = "talk"
Speakers = ["kris-nova"]
+++

As DevOps engineers we care deeply about keeping systems healthy to the point of engineering entire systems to run other systems. This is the case with Kubernetes, which has become the new hero for DevOps users. In this talk we talk about all the ways NOT to use Kubernetes - and the dangers therein.

Kubernetes has changed the DevOps industry more than any other open source tool. The new hero does not come without risk however. We break down the three main dangers of using Kubernetes incorrectly and drill down into each of them in depth.

Security
Kubernetes does not imply security. We look at famous exploits on Kubernetes and discuss the attack vectors contained therein.

We learn about exposing various parts of Kubernetes to the public, and how a malicious user might compromise your cluster.

The take away is common ways to secure your cluster, and how to keep a security minded posture with Kubernetes.

Multi Tenant
The practice of having more than one domain specific workload running on a Kubernetes cluster is commonly referred to as multi tenancy.

We learn about how containers in the same Linux namespace can compromise each other, and how easy it is to crash a cluster from one client overloading a node.

The takeaway is a warning that Kubernetes is powerful, but conflicting workloads can always be dangerous.

Stateful applications
Running a database in Kubernetes can be terrifying. We learn about the dangerous and complexity of running large stateful workloads in Kubernetes.

We learn that the risk reward discussion is commonly overlooked and how easy it is to find yourself trying to run a large stateful application in an environment optimized for stateless applications.

The audience will walk away feeling confident that they will be able to run their organizations applications in Kubernetes without running into (to much) trouble.
