+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Look Mom - no Dockerfiles!  Building Java and Go based container images without Dockerfiles"
Type = "talk"
Speakers = ["eric-smalling"]
Youtube = "u6WIM2xFmOM"
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

As a developer, learning to write well-formed Dockerfiles can be challenging, especially for those new to containers. These builds can also can require specific build tools or container runtime access that might not be available in your build environments. Architects also often face the challenges of providing governance on image standards across their organization’s teams and the various applications they support. In this lightning talk, you will see a couple of open-source tools in action that can make it easier to meet all of these challenges as well as references to other tools and techniques for varying requirements.

Topics covered: * For Java application images, we will look at the “jib” project which provides a 100% Java-based OCI image building solution, integrated right into Maven and/or Gradle. * For Go application images, we will check out the “ko” project which can create an OCI compliant image right from your go build. * How such tools can help your teams create images that comply to standards * Why images from these tools can help minimize exposure to vulnerabilities * References to examples and other tools for other languages will be provided
