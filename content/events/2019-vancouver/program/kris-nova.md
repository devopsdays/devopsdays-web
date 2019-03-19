+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "You can't have a cluster*!$& without a cluster!"
Type = "talk"
Speakers = ["kris-nova"]
+++

I've been running Kubernetes in production for 2 years, and have worked on enterprise Kubernetes service teams including Heptio Kubernetes, and Azure managed Kubernetes team. This presentation is very special and will talk about the dangers in using Kubernetes incorrectly. This presentation is drawn on years of real experience reports of providing Kubernetes as a service. We learn about the surprising ways users have used/abused Kubernetes, and how their creative use cases ended up causing catastrophic problems for the rest of the system. 

# Real stories

A simple example of one of these experience reports is running a large Java application in a docker container in Kubernetes, and how the JVM consumed more memory than the container allocated and ultimately put the node into dead lock. The audience walks away knowing they are not alone in their journey to tackle the new complexities of cloud native application management.

Another example is how a well known engineering company managed to take their entire production infrastructure offline because of a seemingly innocent change to a line of YAML.

# Take Aways

The audience learns about common ways users screw up their clusters, but more importantly leave feeling equipped and confident to fight this complexity within their organisation.
