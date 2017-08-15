+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Microservice Deployment Techniques"
Type = "talk"
Speakers = ["adrian-mouat"]
+++

Handling deployments effectively is an essential aspect of making the most of modern microservice architectures. How do you safely and quickly deploy updates? How do you test that your microservices work at scale in a full production system? How do you measure and respond to problems occurring shortly after an update? 

A lot of techniques and solutions to these problems get mentioned: deployments can be ramped, blue/green or canary. System tests can take place in a staging environment or may be eschewed in favour of ""testing in production"" techniques, such as chaos monkeys and shadowing. However, whilst this gets talked about a lot, actual code examples and tools seem thinner on the ground. 

In this talk, we'll take a look at the various techniques, when you might want to use them, and provide practical examples on how to implement them.