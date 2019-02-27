+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Test in Production: From End-to-End Checks to Observability"
Type = "talk"
Speakers = ["christine-yen","ben-hartshorne"]
+++

What does “uptime” really mean for your system? An end-to-end (e2e) check is where the rubber hits the road for your user experience and is the operator’s best tool for measuring uptime as experienced by your users. Creating and evolving e2e checks also establishes a basis for defining the SLOs and SLIs that we are willing to support.

We'll explore what it means for a system to be “up” by talking about what makes a good end-to-end (e2e) check and what techniques are valuable to pair with them. The workshop will write an end-to-end check together against a common API we can all access (e.g., a small server driving a Phillips Hue bulb, in the front of the room) and use the simple lightbulb server as a touchpoint from which to gauge the “correctness” of the system.

We'll then talk about how our check has to change, as our requirements and system become more complex. We'll talk about capturing, visualizing, and alerting on results (e.g., What’s useful to instrument? What metadata should we have along the way? What existing paging alerts are obsoleted by an effective e2e check?) as we unveil a new, extended version of the lightbulb server, with multiple light bulbs representing a sharded backend.

Prerequisites

* Experience keeping production machines healthy
* A basic understanding of the wide range of factors that can cause an HTTP request from a client to a server to fail
* Ability to interact with an API via the language and environment of your choice
* A laptop with the API access tool of your choice installed (curl/jq/bash would be sufficient (but painful); a scripting language would be better. Anything that can issue HTTP requests and parse JSON responses should be sufficient.) If they'd like to run the sample lightbulb server themselves, the GitHub repository will be public and will likely be written in Golang, so a working Go environment would be nice but not necessary.
