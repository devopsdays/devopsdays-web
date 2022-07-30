+++
Talk_date = "2022-08-25"
Talk_start_time = "11:45"
Talk_end_time = "12:15"
Title = "Living in Containers (as a Developer)"
Type = "talk"
Speakers = ["james-hunt"]
sharing_image = "james-hunt.png"
+++
It’s hard to escape talk of containers in the DevOps space, but almost all of the talks, blogs, videos, and online learning courses want to focus strictly on the deployment of application workloads via containerization. What about developing with containers?

I have spent the past several years living as an OS-nomad; if I can help it, I do not install anything on the main host operating system. No compiler tool chains, app runtimes, libraries; nothing. Instead, I’ve taken to using a local Docker daemon and custom, locally-built container images to wrap up dependencies and preferred environmental configuration on a project-by-project and language-by-language basis.

In this talk, I present the basic architecture of such a setup, and then discuss some of the more difficult aspects of living inside of containers, including:

* Editor integration (vim and VS code)
* Volume mounting and uid/gid uniformity
* Ports and the understated value of Docker Compose
* inotify-driven edit-compile-test cycles (looking at you, Node.js)
