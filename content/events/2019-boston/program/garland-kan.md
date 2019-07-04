---
title: "Building Cost Visibility For Your Kubernetes Clusters"
Type: "talk"
Speakers: ["garland-kan"]

---

This talk addresses one of the most common challenges for organizations adopting Kubernetes at scale: understanding how you’re spending money in your k8s clusters. The inherent sharing nature of Kubernetes means that you have no visibility into how much stuff costs. Without this cost visibility, you can’t optimize your cluster utilization and cut costs, forecast budgets accurately, or understand your product margins in multi-tenancy situations.

Cloud providers like AWS and GCP don’t tell you how you’re spending money at the application-level. Since each instance can be shared by multiple namespaces and pods in a k8s cluster, knowing how much an instance costs (cloud providers share this level of information) isn’t actionable. What you really need to know is how much each namespace or pod costs that was running on the same instance.

Without a clear understanding of how much compute spend a team or customer is responsible for, you can’t accurately manage your budget, understand your cluster utilization, or calculate product margins.

This session will walk the user through open source tools and techniques on how to solve this problem and accurately attribute costs in a Kubernetes cluster. And now that you know how to build cost visibility into your k8s cluster, we will do a quick overview on cost saving techniques.
