+++
Title = "5 Levels of High Availability: from Multi-instance to Hybrid Cloud"
Type = "talk"
Speakers = ["rafal-leszko"]
+++

Does running your application on multiple machines mean it's highly available? Technically yes, but the term HA is already more than that. Take Kubernetes installation, it's not considered HA unless your master nodes are in different availability zones, not only on different machines.

In this session I'll present 5 high availability levels:
1. Multi instance
2. Multi zone
3. Multi region
4. Multi cloud
5. Hybrid cloud

I'll discuss real-life use cases we experienced while developing Hazelcast and present examples of the related technical features you may need: in-memory partition backups, zone aware partition groups, WAN replication.