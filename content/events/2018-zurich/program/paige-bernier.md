+++
City = "Zurich"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Microservices Means Macrocommunication"
type = "talk"
speakers = ["paige-bernier"]
youtube = ""
vimeo = "271452246"
speakerdeck = "https://speakerdeck.com/dodzh/microservices-means-macrocommunication-paige-bernier"
slideshare = ""
slides = ""
+++

The tl;dr is "how microservices can better facilitate communication between team members
and from team to team".

Adopting microservices means a shift in architecture of our system and in communication.
Letting your upstream and downstream dependencies know of major changes is not just a
courtesy but required in order to keep things moving. Communicating early and often takes
shape in strategies like versioning, informative deprecation warnings, temporarily
providing backwards compatibility can all help enforce the coming changes. Treating
internal APIs on a team with the same integrity as externally facing ones makes for a
happy team.

This type of content seems straightforward so I’ll take the approach of “do this not that”
and look at realistic examples such as: during active development a team picks up your
work and suddenly becomes a dependency - how do you gracefully communicate constant
changes? Or its endpoint deprecation day and you still have active consumers - how to
provide the tools they need to migrate to the new stuff. Or the nuts and bolts of why and
how keeping documentation up to date will add to your daily productivity.

The flipside of microservices facilitate better communication is that better communication
is an absolute requirement if you want to the people side to run efficiently. After this
talk people will be excited to implement these strategies and see positive results.
