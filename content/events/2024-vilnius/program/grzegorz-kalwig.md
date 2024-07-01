+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "It was DNS, EKS edition"
Type = "talk"
Speakers = ["grzegorz-kalwig"]
+++
"It was DNS" Let's delve into this saying by analyzing the role of CoreDNS in a Kubernetes cluster and a range of issues that we may encounter in a production environment. During this presentation, we'll thoroughly examine incidents that resulted from suboptimal configuration in the AWS EKS environment. We'll discuss their impact on our services within Kubernetes clusters and uncover the "aha moments" that arose from this experience. I'll present various strategies to address these problems, such as changing CoreDNS configurations, using node-local-dns, or creating application-level caching. These strategies will be illustrated with real-time demos, visualizing the changes in the number of queries to different elements with each approach. The goal of this presentation is to highlight the lessons learned from these experiences so that "It was DNS" doesn't appear in your project. This presentation is specifically tailored for those looking to improve their understanding of DNS within AWS EKS environments.