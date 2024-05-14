+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Mocks as Code. Modeling Services in Integration Tests and Infrastructure-as-Code - All-in-Java Edition"
Type = "talk"
Speakers = ["oleg-nenashev"]
+++



When managing service configurations at scale, it is often required to automate testing of these configurations. In software integration testing we can use Testcontainers - a popular framework for Docker and other container engines. Can we use the same for testing configurations in environments? Yes! Can we go further and mock services that cannot be replicated in Testcontainers or do not even exist yet? Also yes! There are WireMock and WireMock modules for Testcontainers at your service..

In this talk I will focus on using WireMock and Testcontainers when building and configuring your services. We will take Pulumi as a configuration management tool and Gradle as an implementation, but the same approaches are applicable to other config management tools.

