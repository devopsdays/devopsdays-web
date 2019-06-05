+++
City = "Zurich"
Year = "2019"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Securing the “other” supply chain"
type = "talk"
speakers = ["nicolas-byl"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

Currently there is a lot of buzz around the idea of securing your physical supply chain
using blockchains. This seems like a pretty good idea: You can always verify that the
physical goods on a journey have taken. But what about your other supply chain, the one
that ships software from the brains of developers into the hands of users?

In this talk I want to give an overview about the steps necessary to make sure that only
validated code without known vulnerabilities can be shipped off. But what about the
verification that these checks have been successfully done?

Using Binary Authorization in Kubernetes, we will verify that all measures have been taken
and only software that has passed these checks can be rolled out. As a variant an almighty
release manager also has to approve a software rollout. Finally we will see a “breakglass”
override that will keep your compliance department happy. And all this with cryptograhic
approval, but without a blockchain.
