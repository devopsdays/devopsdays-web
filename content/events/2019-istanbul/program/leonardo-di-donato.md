+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Prometheus as exposition format for eBPF programs on Kubernetes clusters"
Type = "talk"
Speakers = ["leonardo-di-donato"]
+++

Open Source Software Engineer @InfluxData

Nowadays every application exposes their metrics via an HTTP endpoint readable by using Prometheus. Recently the exposition format got included into the OpenMetrics standard of the CNCF. Nevertheless, this very common pattern by definition only expose metrics regarding the specific applications being observed.

This talk wants to expose the idea, and a reference implementation, of a slightly different use case that uses eBPF programs as a source of information to allow the exposition and collection of kernel and application probes via a Prometheus endpoint.