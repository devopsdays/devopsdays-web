+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Containerizing Legacy Applications With dynamic file-based configurations and secrets"
Type = "talk"
Speakers = ["andrew-kirkpatrick"]
slides = "https://github.com/magickatt/ContainerisingLegacyApplicationsTalk"
+++

Most applications nowadays are designed with containers in mind, or older projects are updated to be run within them. But what if you don’t have the time, resources or the authority to modify your applications?

Additionally, with service discovery, secure secrets management and dynamic secrets rotation now becoming commonplace, what is the easiest way to utilize these in an application without modifying how it handles configuration or polls for changes?

There are a few ways to facilitate this, from simple ConfigMaps to cross-container volume mounts with config-watchers to using Consul Template with Consul and Vault. It depends how quickly you want to get started and how complex your use-case is!

<a href="https://assets.devopsdays.org/events/2019/toronto/AndrewKirkpatrick_LegacyAppConf_Lg.jpg" target="_blank"><img src="https://assets.devopsdays.org/events/2019/toronto/AndrewKirkpatrick_LegacyAppConf.png" alt="Graphic Recording Containerizing Legacy Applications With dynamic file-based configurations and secrets" /></a>