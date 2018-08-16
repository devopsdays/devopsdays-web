+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Workshop: Automated staging and deployment of a web application"
Type = "talk"
Speakers = ["florian-winkler"]
+++

## Workshop

This Hand-On session will show how a simple commit in git
triggers automated bulding of the application, testing and deployment to
different stages using a pipeline project in Jenkins. Each stage has its
own pre-defined tests and successfully passing these autmatically starts
the next stage. In case of errors custom notifications ensure that the
neccessary tasks can be done to resolve the issues. In the background
docker containers are created, started and destroyed once not in use
anymore. All these actions act indepently and require no human
interaction to provide Continuous Integration and Deployment. Even error
handling can be automated up to a certain point.
