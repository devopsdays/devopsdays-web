+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Mock All The Things - Creating Integration and Load Tests with One Command"
Type = "talk"
Speakers = ["samuel-manzer"]
+++

Testing cloud-native distributed software architectures creates many headaches for developers. Accurately reproducing the production behavior of a modern application’s many dependencies in a controlled CI/CD test environment is a time consuming and error-prone task. Mock All The Things (MATT) is a new tool that lets you create integration/performance tests from your application’s real traffic with just a single command. MATT can then replay these integration tests in your CI/CD environment to ensure that your application always meets all functionality and performance requirements. No more messing around with mocks of your dependencies or trying to run your entire stack on one box - MATT automatically creates any necessary mocks of your databases, downstream microservices, and any other networked dependencies.

MATT is an early-stage, single-developer project built by the presenter. This talk will feature a live demonstration of  MATT by deploying it against an example social media website. The demo will illustrate how MATT can capture all inbound and outbound traffic from a docker container in real time, then save this traffic for later replay as an integration test. It will also demonstrate how MATT’s replayer engine can automatically identify reproducible test ‘flows’ from a messy network dump containing traffic from many different clients. Feedback will be sought from the audience concerning prioritization of improvements to this new technology.