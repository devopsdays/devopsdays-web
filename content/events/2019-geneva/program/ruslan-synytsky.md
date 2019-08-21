+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Elastic JVM: Automatic Vertical Scaling of the Java Heap"
Type = "talk"
Speakers = ["ruslay-synytsky"]
+++

Containers provide much better elasticity and density than VMs, but JVM-based applications are not fully container-ready. The first issue is that HotSpot JVM doesn’t release unused committed heap memory automatically. Second, it is not possible to increase the size of the JVM heap at runtime. To solve these two major issues and make JVM more container-friendly, a new patch is implemented for the Garbage-First collector in OpenJDK. This session shares details of what is done and how the added improvements enhance resource consumption efficiency.
