+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "We Gave the Agent Production Credentials"
Type = "talk"
Speakers = ["anish-puthuraya"]
+++

Every talk about a risky agent ends the same way. Put it in a container. Give it a scratch branch. Let it break things where breaking things is free.

That answer was not on offer to us. Our agent works on the live data platform behind more than 150 hotels, the one operators open every morning to read their numbers. It can query the warehouse, write a notebook, run a pipeline, open a ticket, and change a production table. We gave it all of that, then spent longer on the brakes than on the capability.

The brakes had to be permissions and process, because walls were never available.

Nothing authenticates with a password. Four access modes exist and none of them share code, because one validator with a mode flag is exactly how a read-only path quietly acquires write access. Every write dry runs inside a transaction and rolls back until a human types confirm. The apply script is deliberately kept off the tool allow list, so the permission prompt fires every single time. It is annoying on purpose.