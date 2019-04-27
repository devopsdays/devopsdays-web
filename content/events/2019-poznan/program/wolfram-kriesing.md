+++
Title = "TDD your next docker container"
Type = "talk"
Speakers = ["wolfram-kriesing"]
+++

Some docker containers run entire apps, web server, DB, business logic, and so on. They are created using code. How do you know nothing breaks when you modify it? How do you document what your container contains? Let’s explore together how to test and even TDD your next docker container.

We take unit tests, integration tests, functional tests and so on for granted. The application must be tested and when the complexity grows the app must keep working, so we test it. What about the infrastructure the app runs on? Do we take tests for our docker container for granted? No? Why not? Aren’t docker container not just code, just like the app? So why not test them? Let us explore try if we can set up a docker container from scratch by writing our expectation of what it shall do down first, and make this expectation executable. Let us grow a docker container to what our app needs, and build the safety net along the way, that allows us not breaking the docker container next time it needs to be changed. Some live coding ahead!


