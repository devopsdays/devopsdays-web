+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Continuous Integration Testing"
Type = "talk"
Speakers = ["david-stanke"]
slides = "https://stanke.dev/img/DaveStanke-ContinuousIntegrationTesting-DoDToronto2019.pdf"
youtube = "6YS9pRLfelA"
+++

The DevOps principle of “Shifting Left” promotes testing early in the development cycle, for improved software quality and system health. At the same time, the rise of containerized microservice applications brings a new challenge: services are developed in isolation. It’s common practice that each service is frequently, thoroughly tested—i​ndividually.​ But they don’t get validated together until deploy time (ifatall!). In this session, we’ll explore techniques for running high-fidelity integration tests across multiple services, as part of a Continuous Integration workflow. You will learn how to provision, test, and tear down self-contained Kubernetes environments that replicate complete production systems. This allows you to run full-system tests as part of every build, safely and cost effectively.

<a href="https://assets.devopsdays.org/events/2019/toronto/DavidStanke_ConIntTesting_Lg.jpg" target="_blank"><img src="https://assets.devopsdays.org/events/2019/toronto/DavidStanke_ConIntTesting.png" alt="Graphic Recording Continuous Integration Testing" /></a>

Sample Code: https://github.com/googlecloudplatform/cloudbuild-integration-testing