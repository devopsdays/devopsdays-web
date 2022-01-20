+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Interactive talk: Hitchhiker's Tour to Containerizing a Java application"
Type = "talk"
Speakers = ["nicolas-frankel"]
+++

As 'the Cloud' becomes more and more widespread, now is a good time to assess how you can containerize your Java application. I assume you're able to write a Dockerfile around the generated JAR. However, each time the application's code will change, the whole image will need to be rebuilt.

In this demo-based talk, I'll present different ways to get your Java app in a container: Dockerfile, Jib, and Cloud Native Buildpacks. We will also have a look at what kind of Docker image they generate, how they layer the images, whether those images are compatible with skaffold, etc.