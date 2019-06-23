+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Base64 is not encryption - a better story for Kubernetes Secrets"
Type = "talk"
Speakers = ["seth-vargo"]
aliases = ["/events/2019-amsterdam/program/seth-vargo-sec/"]
youtube = ""
slideshare = ""
slides = ""
+++
Secrets are a key pillar of Kubernetes’ security model, used internally (e.g. service accounts) and by users (e.g. API keys), but did you know they are stored in plaintext? That’s right, by default all Kubernetes secrets are base64 encoded and stored as plaintext in etcd. Anyone with access to the etcd cluster has access to all your Kubernetes secrets.

Thankfully there are better ways. This lecture provides an overview of different techniques for more securely managing secrets in Kubernetes including secrets encryption, KMS plugins, and tools like HashiCorp Vault. Attendees will learn the tradeoffs of each approach to make better decisions on how to secure their Kubernetes clusters.
