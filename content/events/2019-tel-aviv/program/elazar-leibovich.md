+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How Linux processes your network packet"
Type = "talk"
Speakers = ["elazar-leibovich"]
+++

Modern environment uses a lot of the Linux networking stack capability.

Every docker container requires a dedicated bridge, usually a few iptables entries to expose port, and a dnsmasq daemon, and masquarading to allow internet access.

It is hence important to understand Linux network fundumentals. From the driver interrupt/NAPI, to the network stack, the various filters it passes through and the various hooks you have at your disposal to alter and view the network packets flow.

We will first review the theory, and then present useful tools to apply the theory and debug problems in common situations.

We will survey common containers situations and see how packets move from the hardware to the container's veth.
