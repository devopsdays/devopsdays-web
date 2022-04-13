+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "eBPF workshop"
Type = "talk"
Speakers = ["rinor-maloku"]
youtube = ""
slideshare = ""
slides = ""
+++

eBPF is a revolutionary technology with origins in the Linux kernel that can run sandboxed programs in an operating system kernel.
It is used to safely and efficiently extend the capabilities of the kernel without requiring to change kernel source code or load kernel modules.
BumbleBee (https://github.com/solo-io/bumblebee) is a new Open Source project which helps to build, run and distribute eBPF programs using OCI images.
It allows you to focus on writing eBPF code, while taking care of the user space components - automatically exposing your data as metrics or logs.
In this workshop, we're introducing eBPF and the different ways to create eBPF programs.
Then, attendees are creating their first eBPF program using BCC and libbpf to have a better understanding of the main concepts.
Finally, they are going through several labs to build and deploy an eBPF program with BumbleBee. They also deploy Prometheus and a web application on Kubernetes to display all the communications happening in the Kubernetes cluster.