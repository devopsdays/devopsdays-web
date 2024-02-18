+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Treacherous Road Towards Multi-DNS"
Type = "talk"
Speakers = ["daniel-mittelman"]
+++

Albeit being a common industry practice, using the same service provider for network security and acceleration (i.e. DDoS mitigation, WAF, CDN) and for DNS can have adverse effects on a production environment when that provider is compromised. When Cloudflare went down for 27 minutes back in July, during peak time, we found ourselves completely helpless, and were resolved to make sure this doesn't happen again.

This talk will present the process that we've gone through in order migrate our production DNS zone to another provider, starting from the research process of electing a new provider that would suit our needs, through the creation of a playbook with clear checkpoints and a flashing "point-of-no-return" and with the actual execution of that playbook.

We would touch on key topics such as building a process that we can execute with confidence, including how to fully simulate a migration before actually doing it; how to use IaC tooling to manage DNS in a Multi-DNS architecture; how to monitor the progress of DNS propagation; and, what unexpected surprises we encountered along the way and how we solved them.
