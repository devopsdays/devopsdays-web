+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Optimizing Kubernetes Operators and Admission Control with Pepr"
Type = "talk"
Speakers = ["casey-wylie"]
+++

Pepr is a TypeScript framework with a straightforward, fluent API, initially built to aid in facilitating configuration of complex systems. Think of it as a hybrid between Operator-SDK and Kyverno. Pepr leverages Kubernetes Server Side Apply and Watch, with both Mutating and Validating Admission Webhooks to control admission and lifecycle of objects in the cluster. During this chat I would like to address 3 main points:
- How to handle Mutating of Kubernetes Objects as they come into the cluster, assigning sane defaults (Like automatically  mutating pods in OpenShift to have certain securityContext, or Istio adding sidecars)
- How to handle Validation to reject unsafe resources from entering the cluster like write mounts and containers running as root
- How to create a Kubernetes Operator in Pepr utilizing Kubernetes Watch and Server Side Apply to create the desired state in a cluster in the most efficient manner possible
