+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Deploy Without Fear Using Automated Tests"
Type = "talk"
Speakers = ["chris-stone"]
+++

As Kent Beck advises, "Write tests until fear is transformed into boredom", and
anyone who has been witness to a production deployment issue is all too aware
of this fear. Tests can help us gain confidence in the code we are about to
write and in the CI/CD environments we have set up so that the act of pushing
new changes can be stressless and perhaps even fun.

There are several tools we can use for testing applications, and various levels
at which to test. When is it time to write a new test? Should that new test be
a unit test or an integration test? And just what is the difference between
unit and integration? And is end-to-end testing a worthy investment?

I will answer these questions and more based on my experience and opinions as a
full-stack software engineer who has written tests at every level. I will also
demonstrate how I helped take an application with low test coverage and began
introducing new tests using libraries like Playwright and React Testing
Library, and adding them in our GitHub Actions workflows.
