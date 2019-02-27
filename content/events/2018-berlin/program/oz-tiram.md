+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Workshop: Secure Continuous Delivery in Kubernets Clusters"
Type = "talk"
Speakers = ["oz-tiram","jonas-roeckl"]
+++

## Workshop
Traditional CI\CD tools are meant to build artifacts which can then be deployed directly. However, this is not that easy in the context of building artifacts that are Docker images. This is because a running docker daemon is needed to build and push the image to a Docker registry. This can pose a serious security threat to the build host.

Hence, many tools (e.g. orca-build, buildah, ...) exist to build a docker image without the requirement of a running docker daemon. For several reasons, they all fall short when running inside a docker container. Mostly, this is because insufficient capabilities in the container that should build images. This problem could be solved by running the corresponding container in privileged mode, however, if running in a Kubernetes cluster, this poses a major security threat to other pods and the
cluster nodes.

We demonstrate an approach to mitigate this threat using the example of a GoCD pipeline. The presented method guarantees that a container build process can only issue trustworthy docker commands. Furthermore, it is ensured that even if a potential malicious container build process breaks out of its surrounding container and issues arbitrary docker commands, these only affect the functionality of this particular build host and no other process/node in the Kubernetes Cluster.
