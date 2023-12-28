+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Home Lab for fun & profit?"
Type = "talk"
Speakers = ["carlos-leon"]
Youtube = "nWrEqTGroOk"
+++
Back in 2021, as my work & personal laptop was giving up on me and the prospects of going back to the office were nowhere to be seen, I decided to built a desktop for about the same budget that a top-of-the-line work laptop would get me. I ended up with a mean development machine that I could also game on.

Three doritos later my PC has become instrumental in regaining control over my data.

The server is provisioned with Ansible; runs containers with Nomad; service discovery is with Consul; secrets are stored in Vault; Load balancing and certificate management is done with Caddy.

A few of the services that I run in the server for my family and me are:
- Nextcloud
- Pihole
- Plex
- Home Assistant
- Vaultwarden
- n8n
- MonicaHQ
- Photoprism
And a lot more!
Most of these services are backed by PostgreSQL, my favorite database server.

The storage layer is a combination of a RADI1 2x 4TB HDD with ZFS and 1x 1TB NVMe SSD for running the OS, storing service configurations and caching as well.

This is a story on how a home lab slowly but steadily not only became the backbone my home entertainment but also my source of joy and learning.