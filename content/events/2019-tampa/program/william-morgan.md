+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Kubernetes: Endgame"
Type = "talk"
Speakers = ["william-morgan"]
youtube = ""
slideshare = ""
slides = ""
+++

Nielsen has been adopting and using Kubernetes since 2017 and has constantly been searching for the best way to deploy Kubernetes as we have transitioned from on-prem to the cloud.

The Rancher Saga
In the beginning, Nielsen had the requirement to make both an on-premise and cloud deployment of Kubernetes that would use the same automation to create a highly-available Kubernetes cluster. The options at the time were Kubeadm, Openshift, and Rancher. Kubeadm was discounted at the time because of it being in beta, leaving us to choose between Openshift and Rancher. Openshift was owned by Red Hat, and was so different from Vanilla Kubernetes (which we wanted to use) that the only real option left for us was Rancher. We moved to using Rancher, and started building our Kubernetes automation around it, but soon found that Rancher had some limitations. Namely that it struggled to scale over 50 nodes and that it had issues with ephemeral instances constantly coming up and down, causing the Rancher masters to fail. After about a year on the Rancher system, we started looking for something new.

The Kops Saga
As time had moved on from the initial adoption of Rancher, a few things changed: 1.) We moved to a multi-account AWS structure and 2.) We no longer had to deploy to on-prem. With these two changes, we re-evaluated the ecosystem and found more options. kops had continued to mature, and had a strong backing within AWS, AWS had announced EKS, and Kubeadm had moved out of beta. We re-evaluated our options, and found that kops was the best fit due to having the most control over the cluster and its ability to easily create an automatable, multi-master, Terraform based Kubernetes cluster. But as time has moved on, the managed Kubernetes providers have continued to iterate and move forward while kops has started to stagnate.

The GKE Saga
Now we find ourselves looking at managed Kubernetes providers, mainly GKE. As we’ve continued to move into this Kubernetes world, we’ve found that while kops may provide the best AWS Kubernetes experience, GKE provides everything needed in a Kubernetes cluster right out of the box experience (the compute, control plane, Ingress, logging, custom metrics, and managed open source templates), while managing the control plane for free. I think the way forward is GKE as its the best offering and the most integrated with its respective cloud. As GKE continues to grow through announcements like Google Anthos, I think that it will only continue to strengthen its lead in the managed Kubernetes space and continue to be the place where we prefer to run Kubernetes.