+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "CI/CD for Data - Building Data Development Environment with lakeFS"
Type = "talk"
Speakers = ["vino-duraisamy"]
+++

A property of data pipelines one might observe is that they rarely stay still. Instead, there are near-constant updates to some aspect of the infrastructure they run on, or in the logic they use to transform data, below are two examples.

To efficiently apply the necessary changes to a pipeline requires running it parallel to production to test the effect of a change. Most data engineers would agree that the best way to do this is far from a solved problem.

Most attempts at doing this fall on one of two extremes--either executed with overly simplified hardcoded sample data that let through errors that will appear with production data. Or, executed in a maintenance-intensive test environment that requires duplicating the production data, which also ends up massively increasing the risk of a breach or data privacy violation.

The open source project lakeFS let's one find the much-needed middle ground for testing data pipelines by making it possible to instantly clone a data environment through zero-copy cloning operation. This enables a safe and automated test environment for data pipelines that avoids the pitfalls of copying or mocking datasets, and using production pipelines to test.

In this session, we will showcase how to use lakeFS to quickly set up a development environment and use it to develop/test data products without risking production data.