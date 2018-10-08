+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Google gvisor container runtime sandbox"
Type = "talk"
Speakers = ["christo-goosen"]
Speakerdeck = "https://speakerdeck.com/devopsdayscapetown/christo-goosen-google-gvisor-container-runtime-sandbox"
+++

Gvisor was released 5 months ago and promoted with Google Cloud Platform's push for python3.7 support. Google identified the need for a user-space kernel to act as a sandbox in container/docker environments. Gvisor is written in Golang, provides a swop in runtime for docker and provides a additional layer of kernel protection from your executed code. Google's gvisor aims to protect the host kernel with "employs rule-based execution to provide defense-in-depth". Will cover a quick intro and how easy it is to get going with gvisor.
