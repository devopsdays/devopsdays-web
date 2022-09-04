+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Optimizing Docker Image Builds for Microservice Stacks"
Type = "talk"
Speakers = ["david-kirk"]
+++

In this talk we’ll discuss two strategies for building docker images that most companies or teams can implement with relatively small effort, and realize some meaningful improvements from. The first is a docker image tagging strategy that you can use to avoid having to rebuild images from commits that have previously been built. The second is using a shared docker daemon across the engineering team to avoid slowing down your machine, speed up builds, and maximize cache hits. I’ll cover the way that we’ve gone about implementing these strategies at NTWRK, and some recommendations around how you can do so as well!