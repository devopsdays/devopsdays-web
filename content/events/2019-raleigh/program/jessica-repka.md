+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Opensource Container Security:  A brief overview"
Type = "talk"
Speakers = ["jessica-repka"]
+++


Why is container security important? We will review 3 tools that help will full coverage security from build to live protection so you can have full system coverage with  automation notes on integrating with your CI/CD pipelines.

Anchore, scan your container after it's build and prevent an unsecure build from pushing up to your repository.

Falco, preventing any image that doesn't pass the anchore policies from deploying into your environment.

Kubeless with Falco/sysdig, a live system watchdog. It can send warning to your Slack based on warnings you chose. Have someone executing in your container? Capture their activities in sysdig and save them to storage for further investigation, all while your node has been tainted and isolated. Once you've gathered enough you can have the container deleted(by timed configuration if you want).
