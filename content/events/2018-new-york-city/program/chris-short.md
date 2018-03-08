+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Golang to the rescue: Saving DevOps from TLS turmoil"
Type = "talk"
Speakers = ["chris-short"]
+++

If you ever need to validate certificates or certificate chains before
deploying them, Golang provides a near foolproof test method.

A 3rd party developed a tool that was then handed off to our DevOps team to
manage and maintain. Before I could do any re-engineering work, I had to
resolve a critical issue—the certificates on the ELBs were about to expire and
needed updating.

I assumed that if the ELB, NGINX, or httpd started, it was a good sign. This
was a false assumption on my part and I ended up serving a bad chain for a few
minutes. This did not break the site, but it was definitely not the way I
wanted things to remain.

I needed a tool that would fail if the certificate chain provided was
incorrect. I wanted a lightweight tool that could be publicly accessible.
Conducting a third-party analysis of the certificates and configuration was a
requirement. There were no tools that I could find meeting this need, so I
decided to build my own. I turned to the open source language, Golang.

A detailed breakdown of how I built a tiny web server to fit my needs along
with what each package is doing as detailed in the article linked above.
