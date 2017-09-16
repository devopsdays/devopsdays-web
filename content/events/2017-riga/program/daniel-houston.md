+++
Talk_date = "19.09.2017"
Talk_start_time = "14:00"
Talk_end_time = "14:05"
Title = "Thinking outside the box: The Docker socket security concern"
Type = "talk"
Speakers = ["daniel-houston"]
+++

<p><em>The Docker socket is insecure when mounted through to containers, allowing subsequent contains to escape the docker model and root the docker host.</em></p>

<p>Many use Docker in their CI pipelines; but few everyday users are aware of the security issues surrounding the docker socket on docker hosts and the complications this brings. I want to highlight one such issue with the docker socket when creating docker containers within docker containers.</p>