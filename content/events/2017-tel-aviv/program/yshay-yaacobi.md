+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Dynamic Security Testing with Zap"
Type = "talk"
Speakers = ["omer-levi-hevroni", "yshay-yaacobi"]
+++

Running security tests as a part of your CI pipeline allows you to provide better and more relevant feedback to developers as quickly as possible (also known as the “Shift Left paradigm”/”DevSecOps” methodology).

But how do you start? Security testing seems so complex and expensive!

In this session, I will show you how to use Zap as a part of your CI pipeline to create automated security testing for your Web App or REST API.

Zap is a free and open source security tool, developed by the OWASP foundation.

I will discuss and demo 3 approaches on how to integrate Zap into your CI environment: * Zap with existing UI automation tests: Zap will proxy the traffic to your web app, looking for security issues. * Zap with existing tests for your REST API: similar to the one above, but this time without the web application. Ideal for testing APIs that are not consumed by a web app. * Zap with OpenAPI: Zap can load an OpenAPI definition of a REST API, and then run various tests against it. Ideal for cases when your API is already supporting OpenAPI specification. If not, the previous approach is easier.

Join me in this session to learn how to build each of these solutions, and see a live demo using my favorite victim ― OWASP Juice Shop. As part of the demo, we will look into Zap’s findings, which are a testament to how valuable it is. The entire solution I’ll demo is running on top of using Docker ― meaning you can easily run it in your environment (if you’re not familiar with Docker, don’t worry, I’ll explain what it is).

