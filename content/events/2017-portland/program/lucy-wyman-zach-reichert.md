+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "QAELK: Are Our Tests Any Good?"
Type = "talk"
Speakers = ["lucy-wyman", "zach-reichert"]
+++

Measuring the quality of tests is a hard problem. Code coverage metrics don't tell us if a feature is actually being exercised in tests. Failure histories are lost if (sorry, when) Jenkins goes down. It's difficult to get a comprehensive overview of which tests ever tell us our code is broken. How do we know which tests are providing value? And which aren't? How do we collect data about escaped and regressed bugs, or determine which tests are using the most resources? Enter: Quality Assurance with ElasticSearch Logstash and Kibana!

The goal of the QAELK project is to answer these questions:

* How do we measure how effective and efficient our acceptance tests are?
* Can we make data driven decisions about our testing lifecycle?
* Can we reduce the time of our feedback loops while not degrading test quality?
* How do we justify testing resources?

We'll discuss how QAELK has helped us categorize our tests by value and resource usage, and how we've used that data to make decisions about test priority and cadence. We'll have a demo of QAELK phase 1, cover how it was designed and developed, then wrap up with our plans for QAELK phase 2. If you're looking to improve your test suites with data, get a better understanding of how your testing resources are being used, or learn more about quality assurance in general, this talk is for you!
