+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Kubernetes at Scale: Going Multi-Cluster with Istio Service Mesh"
Type = "talk"
Speakers = ["jubril-oyetunji", "divine-odazie"]
sharing_image = "jubril-oyetunji.png"
+++

Kubernetes changed the way organizations deploy and scale applications. Unlike the traditional methods of configuring infrastructure procedurally, Kubernetes requires operators to define the desired state of their application while it handles the rest.

As organizations who adopt Kubernetes scale their infrastructure, they soon encounter challenges ranging from "downtime due to problems with a Kubernetes cluster" to "messy shared development environments." To overcome these challenges, they began to go multi-cluster with the help of service meshes like Istio.

Divine and Jubril will start this session by discussing the multi-cluster strategy of deploying applications on Kubernetes and how Istio service mesh streamlines its implementation and management. After that, to demo, they will connect two Kubernetes clusters to form a multi-cluster setup. With the infrastructure in place, they will demonstrate how to mirror services across clusters.

Towards the end, using Istio traffic shift and split features, they will demonstrate rerouting traffic seamlessly from the primary cluster to the secondary in the event of failures or for A/B testing purposes.

By the end of this talk, attendees will be equipped with the knowledge to assess if multi-clusters would benefit their organizations and will have practical knowledge on how to implement a multi-cluster deployment.
