+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Object-oriented design for infrastructure-as-a-code"
Type = "talk"
Speakers = ["anna-bankirer"]
+++

Everyone talks about the fact that infrastructure should be programmatic and treated as a code, but often what this means is just writing a bunch of scripts to automate our deployments.
By doing so, aspects like proper documentation, separation to modules , abstraction, even version control that are standard for "regular" software projects are omitted from infrastructure systems.
This leads to cumbersome, monolith system - the very thing we are trying to resolve in the software design.
I would like to discuss the basic software design principles like SOLID and DRY and how to apply them when automating our deployments, writing docker containers or writing our application stack.