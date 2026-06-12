+++
Title = "Flatcar Linux: Provisioned, Not Installed. A declarative and Immutable Operating Systems for Containers and Kubernetes"
Type = "talk"
Speakers = ["bronicki-jan"]
+++
<style>.talk-page { font-weight: 400; font-size: 1.4em; }</style>

In modern DevOps workflows, we usually do not build applications by logging into a machine and changing things by hand. We use Dockerfiles, Kubernetes manifests, Terraform, CI/CD pipelines, and other declarative tools to describe what we want the system to look like. But the operating system underneath our containers is still often treated differently: installed interactively, changed over time, patched manually, and debugged through SSH until every node becomes a little bit unique.

This talk looks at Flatcar Linux from that angle: as an operating system for container and Kubernetes hosts that is provisioned rather than traditionally installed. I would like to show how ideas we already use for applications and infrastructure can also apply to the host OS: declare what the node should look like up front, provision it reproducibly on first boot, run workloads in containers, and keep the base system immutable.

I'll cover declarative provisioning, Ignition/Butane configuration, immutable root filesystems, automatic updates, A/B partitions, release channels, and how this fits into Kubernetes and container operations. The main focus will be on the operational model: reducing configuration drift, making nodes easier to replace, simplifying updates and rollbacks, and changing how we think about the Linux host layer.
