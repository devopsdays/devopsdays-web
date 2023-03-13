+++
City = "Zurich"
Year = "2023"
talk_date = "2022-06-01"
talk_start_time = "14:25"
talk_end_time = "14:30"
title = "Test-Driven Development with Go"
type = "talk"
speakers = ["ivan-pesenti"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

### Workshop

Test-Driven Development is not an easy-to-master technique. You've to be very determined and self-disciplined to best exploit its advantages. As always, practice plays an important role. During the journey of learning the TDD, everyone has to deal with some failure at a certain time. Usually, this moment is when you're about to write a complex solution that is divided up into multiple layers that talk to each other. This is because most of the blog posts or tutorials out there don't provide and guide us through a more complex application but they rely on very trivial applications that anyone with a little experience can manage. In this workshop, I'll guide you in building a REST API to manage the TODOs. In the end, we'll have an application that allows us to manage TODOs stored in a PostgreSQL database.

To follow this workshop you must have a machine with the following prerequisites:

- Go 1.20 or above
- VSCode (or any other IDE you're comfortable with)
- Docker
- API Client (cURL, Postman, and so on)
- PostgreSQL client (DBeaver is the favorite)

The ideal listener should have the following prerequisites:

- Be familiar with HTTP concepts and REST-APIs (I won't cover the fundamentals of the HTTP protocol nor the REST standard)
- Have some prior experience with tests (even if it's poor)
- Have some experience in programming with Go (we won't cover the basics of the language)
- Be familiar with Docker (knowledge of the basic commands and concepts such as images and containers)
- Some expertise in databases


The agenda of the workshop will be as follow:

1. Introduction ~15 minutes:
    1. Theoretical introduction to Test-Driven Development. Which are its three stages? Its rules and constraints. Pros and cons. When and where can it be applied?
    2. Introduction to tests. Which kind of tests are there? Difference between them.
    3. What is a clean test? How to write a clean test?
    4. Code Coverage. What is it? How should it be read?
    5. Tests in Go. What are the Table-Driven tests? What are mocks? Which packages should we use to write tests?
2. HTTP ~45 minutes:
    1. Define the user requirements we have for this section. Define which endpoints and actions we've to expose to be consumed by a web client.
    2. Build the HTTP handler for the PUT endpoint.
    3. Introduction to the `httptest` package.
    4. Write the HTTP handler and its tests.
3. Database ~45 minutes:
    1. Define the user requirements we have for this section.
    2. Design the layer that will talk to the database.
    3. Introduction to the `sql-mock` package.
    4. Write the database logic and its tests.
4. Final ~15 minutes:
    1. Build the interface that we've to use to inject the database package's functionalities into the HTTP handlers.
    2. Adjust the written tests to reflect the new layout of our solution.
    3. Setup of the application's dependencies within the `main.go` file.
    4. Run the PostgreSQL instance through Docker.
    5. Create SQL objects in the database and populate them.
    6. Run the application and test it.
5. Q&A ~15 minutes

By completing this workshop the learner gains a hands-on experience with the TDD. Furthermore, he'll be ready to use it in his next project.