+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How to shave off 100ms off your distributed cache by just shifting your containers"
Type = "talk"
Speakers = ["pedro-pessoa"]
+++

During this talk I will demonstrate how to shorten the time distance from the typical Redis setup to the end user. Reducing that latency typically results in faster, more responsive applications and therefore happier users. This revised architecture will make use of recently launched services which will frictionless run our containers (Redis k8s) closer to our users while keeping our primary data stores and code untouched. This talk will also cover running Redis on containers (k8s) and the benefits of that portability.

Key takeaways:

* Redis is easily portable to almost anywhere in your architecture
* New services allow us to deploy Redis closer to our users than ever.