+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Strong Consistency in Databases. What Does it Actually Guarantee?"
Type = "talk"
Speakers = ["andrew-gooding"]
+++

Distributed data stores are subject to the CAP theorem, and historically NoSQL distributed systems have chosen availability over consistency. This has been changing, yet many famous databases are still AP only.

In Eric Brewer's 2012 follow-up article about the CAP theorem he stated:
'Availability is obviously continuous from 0 to 100 percent, but there are also many levels of consistency, and even partitions have nuances, including disagreement within the system about whether a partition exists.'

This talk will include a theoretical overview, but focus on the practical aspects of the theorem.

* What are the tradeoffs between AP and CP modes?

* How do they affect your application and data?

* How do different levels of consistency actually matter?
