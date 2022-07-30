+++
Talk_date = "2019-08-26"
Talk_start_time = "10:15"
Talk_end_time = "11:45"
Title = "Sidecars, eBPF and the Future of Service Mesh"
Type = "talk"
Speakers = ["jim-barton"]
sharing_image = "jim-barton.png"
+++
A lot of dust has been kicked up recently around the roles of sidecars, Envoy proxy, and eBPF in the future of service meshes. Envoy proxy is the de-facto proxy for service mesh implementations today, and it delivers excellent support for Layer 7 capabilities that most users need. There is no question that eBPF and the OS Kernel can be used to improve the execution of the network at Layer 3/4 (short circuiting for optimal paths, offloading TLS/mTLS, observability collection, etc). But complex application networking features (retries, timeouts, TLS, HTTP2 protocol, etc) must remain in the user space at L7.

eBPF offers a great complement to the sidecar proxy, but is it a replacement?
Can the two co-exist?
How can we optimize proxy placement?

In this talk, we explore the challenges of service mesh today, along with the latest developments in what the service mesh community is doing to improve its implementations.
