---
title: "Containerizing legacy applications with dynamic file-based configurations and secrets"
Type: "talk"
Speakers: ["andrew-kirkpatrick"]

---
Most applications nowadays are designed with containers in mind, or older projects are updated to be run within them. But what if you don’t have the time, resources or the authority to modify your applications?

Additionally, with service discovery, secure secrets management and dynamic secrets rotation now becoming commonplace, what is the easiest way to utilize these in an application without modifying how it handles configuration or polls for changes?

There are a few ways to facilitate this, from simple ConfigMaps to cross-container volume mounts with config-watchers to using Consul Template with Consul and Vault. It depends how quickly you want to get started and how complex your use-case is!
