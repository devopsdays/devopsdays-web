+++
City = "Atlanta"
Year = "2017"
date = ""
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Tales of Test-Driven Infrastructure as Told by a Windows-Toucher"
type = "talk"
speakers = ["chris-evett"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

Infrastructure as code is a pattern that allows a team to sustainably scale services without requiring increased effort in the form of manual repetitive tasks, which are generally seen as error prone and not intellectually engaging. What some people do not consider is that infrastructure code is subject to the same technical debt accumulation as any other code, and hence benefits greatly from software development patterns such as continuous integration and test automation in order to ensure that functionality does not degrade over time, and that maintenance does not become prohibitively difficult. At Cardlytics, we have recently been experimenting with test-driven development as a means to improve quality and reliability of various aspects of server creation, application deployments, and general automation tasks. Here, we will discuss the highlights of our devops journey and then dive into the details about our TDD infrastructure workflow with a focus on the unusual problems we face as a primarily windows shop with on-prem physical and virtual infrastructure. Additionally, we will reflect on some mistakes that were made along the way and talk about how our failures directed our choices with respect to tooling and practices and ultimately led to success.
