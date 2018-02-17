+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Bootstrapping Jenkins"
type = "talk"
speakers = ["reinhard-naegele"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

Today, "infrastructure as code" has become normality for many of us. We provision our systems with the push of a button or via CI jobs, Jenkins probably being the most popular CI server to host these jobs. But how do we manage our Jenkins server? Quite frequently, it is manually installed. Security, credentials, plugins, jobs have to be configured. But what do we do if the server crashes? The more we move towards continuous delivery/deployment, the more important the permanent availability of the CI server is. In case of problems, we must be able to recreate it from scratch any time. This talk shows how we can spin up an instance with Terraform and provision a fully configured Jenkins master/slave setup based on Docker Compose with Ansible including Nginx as reverse proxy and TLS certificates from Let's Encrypt. The main focus will be on demonstrating how we can completely configure Jenkins via init scripts in Groovy.
