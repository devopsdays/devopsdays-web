+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Event Driven CI/CD Pipelines"
Type = "talk"
Speakers = ["brett-smith"]
+++

In this presentation I go over how we created our current event driven pipeline.
It covers why we decided to go event driven, were we started, where we are now,
and where we are headed. I talk about how we are leveraging several technologies
like Kafka, Go, Kubernetes to create a fully automated asynchronous supply chain
for delivering rpms, deb, and oci images to customers. I also cover how not
having time to build a new greenfield pipeline drove our technical decisions. I
cover our audit system, receipts, and gating system that lets the robots ship
the software by readiness. The lessons learned covers the triumphs and pitfalls
of event driven asynchronous CI/CD pipelines. Attendees will learn about ways to
gate releases by readiness, drive automated testing, make their pipelines
asynchronous, and use machine learning to make the pipeline leaner and more
reliable.
