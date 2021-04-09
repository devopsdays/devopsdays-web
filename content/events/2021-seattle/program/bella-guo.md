+++
Talk_date = "2021-05-04"
Talk_start_time = "14:15"
Talk_end_time = "14:35"
Title = "Did we reinvent the wheel? Why we eschewed existing infrastructure as code and CI/CD tools"
Type = "talk"
Speakers = ["bella-guo"]
+++

The problems:
1. How do we deploy dozens of microservices to many different environments?
a. Avoid rewriting across different clouds and local machines 
b. Limited support for smaller clouds
2. How do we give devs control over their environments?
a. Multiple clusters and cluster resources
3. How do we enable rapid, local iteration? 
a. Issues with most CI/CD pipelines 
4. Can we go from source to executable to docker image to Kubernetes cluster in a one line command?

Our solution: 
1. Python wrapper to do variable replacement and run shell commands. 
2. 3 major sections - compile code, build docker image, deploy to cluster
3. System of buildconfigs gives fine grained control over what gets deployed

Audience takeaways:
1. Why and when to consider writing your own buildsystem 
2. An example of how to structure a buildsystem for your own project
