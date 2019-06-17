+++
Title = "8ms/99th write percentile latency - is it fast? Understanding importance of \"SRE implements devops\""
Type = "talk"
Speakers = ["maciej-lasyk"]
+++

It's been 10 years since devops buzzword started buzzing around and 11 years since Cassandra has been
open - sourced by Facebook. What we have learned about database reliability since then? I would like
to tell you a story about #noops company that decided to run own Cassandra clusters around globe
having high - throughput and low latency system dependant upon it. It's a story about understanding,
that reliability is the most important feature in every product. Do you know that targeting specific level of 
reliability is the key to establish balance between high reliability and providing new features to drive 
user acquisition and revenue growth? Does it sound like a bullshit bingo? Great - during this presentation
I will explain in details how our journey to "reliable enough" looked like in terms of maintaining Cassandra clusters.
You will learn about basics of Site Reliability Engineering, how to talk to your business introducing Customer
Reliability Engineering and when you might finally say "ok, we've finished it, our database is reliable enough,
let's do something else". Why I chose Cassandra as the subject of this talk? Because it's reliability is very
tricky - it's distributed, clustered database providing eventual and tunable consistency. And after many
years of working with MySQL/MariaDB/PgSQL/Oracle I can easily say, that Cassandra is an operational hell which
can be tamed with well known SRE practices and good, old engineering skills.

