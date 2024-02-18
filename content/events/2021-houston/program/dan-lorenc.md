+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Zero-Trust Supply Chain Security"
Type = "talk"
Speakers = ["dan-lorenc"]
sharing_image = "dan-lorenc.png"
slideslive = "38966337"

+++

Traditionally, network and workload security relied on trusted "perimeters". Firewalls, internal networks and physical security provided defense against attackers by keeping them out. This type of architecture is simple and effective when all assets are in one place, the firewall doesn't need many holes and all hardware is on the same physical network. 

Unfortunately, this isn't true anymore. The workplace is distributed. Devices are mobile and environments are ephemeral. Enter zero-trust security. Zero-trust architecture focuses on protecting assets, not perimeters. Services authenticate users against hardware instead of network endpoints. Users authenticate with multi-factor-authentication (FIDO2, etc.) and devices authenticate with hardware-roots-of-trust (TPM2, etc.). The end result is a system focused on fine-grained access control. Instead of trusting every device on a network, you control exactly which users and systems have access to which services. 

This talk will cover the zero-trust supply chain architecture in detail, and show (through demos) how it can be used today.