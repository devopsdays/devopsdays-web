+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Use the infrastructure, Luke!"
Type = "talk"
Speakers = ["ashley-roach"]
+++

Do your developers think infrastructure is irrelevant to their app?  This talk will show you how you can use your infrastructure to write a health check component to make your application more robust.

Most developers don’t really care about the underlying infrastructure on which their app is running. In particular, app developers care that the systems are up and that they provide the appropriate compute/storage/networking capabilities, but rarely do app devs think: “What features of the infrastructure will help me write more resilient and fault-tolerant applications?” By using some features in Cisco’s infrastructure, but could be applicable to other platforms, I will walk through my experience in building a web application that takes advantage of that infrastructure to be aware of the underlying compute and network resources.  This isn’t a vendor pitch, but rather uses Cisco’s products as an example as that’s what I have access to.  Code is open sourced here: https://github.com/CiscoDevNet/infraspringboot