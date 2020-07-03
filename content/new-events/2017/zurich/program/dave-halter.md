+++
description = ""
title = "Beautiful Deployment Code"
type = "new-talk"
speakers = [
        "dave-halter",
]
vimeo = "219025650"
speakerdeck = "https://speakerdeck.com/dodzh/d1-i4-dave-halter-beautiful-deployment-code"
+++
We all know that DevOps is not (only) about deploying the latest WordPress anymore. There
is a growing number of projects that have huge deployment scripts - think OpenStack or
OpenShift. In this context it is extremely important to keep deployment code readable and
maintainable.

This talk will not try to give you a best practice overview, but show you how Ansible as a
whole could be improved. Ansible has a very rich set of features, its YAML files however
are often a stumbling block and understanding a big YAML project is not a task for
bystanders. In a simple RFC [1] there is a proposal on how Ansible could look like in the
future.

[1] https://github.com/davidhalter/pysible

[2] https://github.com/davidhalter/jedi