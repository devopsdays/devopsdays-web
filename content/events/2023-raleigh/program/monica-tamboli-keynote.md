+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "GitOps to the Rescue - Boosting Productivity with Automation"
Type = "talk"
Speakers = ["monica-tamboli","daniel-guinan"]
+++

Automation and especially test automation is vital to the success of any software development team to ensure repeatability, stability, consistency, and quality of the software under development.  GitOps is on the rise as an Infrastructure-as-Code approach for driving operations based on manifests stored in a Git repository.  Can we pair the two together and push the boundary of test automation?  What are the benefits and challenges of this approach?

Open Liberty is an open lightweight cloud-native Java runtime proven in large deployments.  As part of the Open Liberty test team, we are responsible for Continuous Integration (CI) and Continuous Deployment (CD) for our test applications (Microservices and Monoliths) as well as various dependencies like DB2, MongoDB and Jmeter.  We gave GitOps approach a try for our OpenShift/Kubernetes deployments using the OpenShift GitOps operator and argoCD. This approach reduced test setup time from days to hours if not minutes as we automated installation of various operators as well as applications.

In this session, we will share how we benefited from using GitOps in our CI/CD flow with a demo, and some challenges we faced. Other organizations can use similar approach and benefit from our experiences.
