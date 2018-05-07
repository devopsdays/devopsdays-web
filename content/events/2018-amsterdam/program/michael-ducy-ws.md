+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Container Troubleshooting Workshop with Sysdig"
Type = "talk"
Speakers = ["michael-ducy"]
aliases = ["/events/2018-amsterdam/program/michael-ducy-ws/"]
youtube = ""
slideshare = ""
slides = ""
+++

Join Sysdig for a 2-hour use-case driven training session on container visibility, troubleshooting and run-time security monitoring with the Sysdig open source tools (Sysdig, Sysdig Inspect, and Falco) and learn how containers work under the hood.

Agenda:

* Visibility and troubleshooting
Learn how to debug a 502 error on a containerized LB with HAproxy, a Python webapp crashing after working for 5 minutes, and where did you configure wrong credentials in a microservices app?

* Analyzing performance and bottlenecks
Compare for yourself the performance of different web servers running in containers, use system call tracing to find the bottleneck in your application or learn how to use spectrograms (flame graphs) to visualize system call performance.

* Debugging Kubernetes
Dive into Kubernetes internals using reverse engineering: why that Kubernetes service is valid but doesn’t work? How does service resolution work? Or how Kubernetes instructs Docker Engine.

* Security run-time monitoring and forensics
Last but not least, all these previous lessons can also be applied for security, not only doing forensics on an attack attempt. Sysdig Falco can alert on containers with anomalous behavior.
