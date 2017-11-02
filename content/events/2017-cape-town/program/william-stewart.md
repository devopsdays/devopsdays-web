+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Wonderful Things You Can Do With Linux's Kernel Tracing"
Type = "talk"
Speakers = ["william-stewart"]
+++

Berkley Packet Filters (BPF) started out as the language used for
writing filters for BSD, most commonly used these days for filtering
packets in tcpdump.

In the last 10 years, the Linux kernel has got a bunch of functionality
which makes monitoring performance at the kernel level easier and more
efficient, which means we can write our own tracers for metrics we'd
usually try use strace to get, and other useful metrics.

In this talk, I'll talk about Extended Berkley Packet Filters (eBPF),
perf_events, and ftrace, and some of their history and applications.
Some of the popular use cases are flame graphs, files being read, system
calls being used, and low level networking metrics. We'll also go
through writing one of our own.
