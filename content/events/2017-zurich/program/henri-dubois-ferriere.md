+++
City = "Zurich"
Year = "2017"
date = "2017-02-27T15:11:17+01:00"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Cloudy with a chance of syscalls"
type = "talk"
speakers = ["henri-dubois-ferriere"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

TLDR; The Linux system call interface is becoming an increasingly useful instrumentation 
point for monitoring, troubleshooting, and security. This talk covers why that is happening, 
what you can get from it, and how it will make your life better.

Once upon a time, you could use packet capture to answer questions like: How many outbound 
TCP connections in the past hour? Top HTTP requests? Did the latest SQL injection attack 
happen to my database?

But then the cloud happened, we lost access to a span port, and no longer had a good place 
to capture traffic. And then containers and their orchestration happened (hello k8s!), 
and we lost the straightforward mapping between network tuples and applications.

But there's good news! There's another instrumentation point which is still largely 
overlooked, but is even richer in the detail it provides: system calls. By tapping syscalls, 
you can get pretty much anything you can get from tapping the network, and a lot more. 
And we're now getting good support (both kernel and associated tooling) to tap into this 
instrumentation point. 

We'll give highlights of some of those open-source tools, such as go-audit, sysdig, 
falco, and maybe even a taste of ebpf. Most importantly, we'll cover practical examples of 
using system calls to answer analytics, security, and monitoring questions on realistic 
environments.
