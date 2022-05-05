+++
Talk_date = "2022-07-19"
Talk_start_time = "13:40"
Talk_end_time = "14:10"
Title = "Debugging with Ephemeral Containers"
Type = "talk"
Speakers = ["peter-valdez"]
+++


Ephemeral containers are a beta feature landing with Kubernetes v1.23.

These special containers allow for easier debugging of pods/containers, especially if you use “distroless images”, which only contain your application and runtime dependencies. In those cases, you usually wouldn’t even be able to get a shell via `kubectl exec`.

This presentation will show how to use `kubectl debug`, which allows Kubernetes users to spin up these special containers to inspect the state of a failing container. We’ll also show how to enable process namespace sharing to gain deeper visibility into the failing pod.
