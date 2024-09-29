+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Bad Tests Running Wild – Concurrency, Test Data, and Minimal Human Interaction in DevOps"
Type = "talk"
Speakers = ["paul-grizzaffi"]
Youtube = ""
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

In 1984, Scorpions released their highly-successful album Love At First Sting. The opening track, Bad Boys Running Wild, speaks to me about test automation running amok in a DevOps environment. The lyrics include “if you don’t play along with their games” which certainly had no relation to the concept of DevOps at the time, but perhaps now they do.

When testing in a CI/CD pipeline, we often think “just create a task that fails the deployment if any tests fail”. Mechanically, that thought is not far off base. Practically, however, there are many facets of this flavor of testing that we must consider when running automated tests in a pipeline. Typically, the biggest considerations are execution duration and consistency; we don’t want to wait “too long” for our deployment and we want the tests to behave the same way on each execution.

Running our automated test scripts in parallel can absolutely reduce the duration of an automation suite’s execution. Having success and consistency with concurrent execution, however, requires upfront work to obtain detailed knowledge of the application being tested and dependencies in the automation suite. Omitting this work will result in our automation being unable to get out of its way; automation will inevitably run wild.

Additionally, a deploy-on-every-commit, possibly even to production, is the end goal for many teams. There are additional considerations for being able to accomplish this goal because it’s likely no humans will touch the modified software until it’s actually in production. How do we handle test failures in the pipeline? How do we handle bugs that escape into production?

Join us as the walks through important aspects of test automation parallelization, commit-to-production, gating tests, and logging; aspects that must be addressed to be successful when implementing automation in a CI/CD pipeline for a DevOps-focused organization.