+++
City = "Zurich"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Advanced Linux Performance Monitoring With eBPF"
type = "talk"
speakers = ["heinrich-hartmann"]
youtube = ""
vimeo = "272537603"
speakerdeck = "https://speakerdeck.com/dodzh/advanced-linux-performance-monitoring-with-ebpf-heinrich-hartmann"
slideshare = ""
slides = ""
+++

Recent kernel versions (4.5+, Ubuntu 16.4) allow a fundamentally new way of instrumenting
operating systems. Instead of reading data from /proc, a large variety of kernel events
can be traced and aggregated inside the kernel with eBPF. In the talk we will give a short
overview of how to collect, store, and analyse high frequency events like IO-latencies and
syscall counts, scheduling latencies, etc. with a monitoring system.
