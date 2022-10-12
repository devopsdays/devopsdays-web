+++
Title = "Kubernetes, AWS, ALBs, Terraform and no Helm!"
Type = "talk"
Speakers = ["marcos-diez"]
+++

You will see the advantages of using the k8s provider for terraform instead of helm to manage the k8s objects ("yamls"). It allows you to see and confirm exactly what changes will happen in your cluster. Later we'll see how to integrate that with the AWS ALB and forward traffic directly to pods. 

It took me some scars to realize that although helm is the most used tool for kubernetes, actually creating and managing resources with terraform (using it's k8s provider) gives you much more fine control of your changes and allows you to review what will really happen in your cluster. In this talk I'll show examples on how to do that. In the end, I'll integrate all that with the AWS Load Balancer and the AWS K8S ALB provider, so that the traffic goes from the ALB directly to the pods, saving extra hops (from the k8s service and maybe the commonly used nginx ingress controller) 
