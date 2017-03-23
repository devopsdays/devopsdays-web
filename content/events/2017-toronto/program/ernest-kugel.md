+++
date = "2017-02-27T15:10:56+01:00"
title = "A Case Study in Error Budgeting"
type = "talk"
speakers = ["ernest-kugel"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

We were looking for a better way to represent the experience of our clients and the reliability of our site. We found that the traditional uptime metrics did not work well for us, since they did not account for the satisfaction of our client base. Traditional uptime was also vaguely defined, with no consensus over which component should be broken in which way for which duration of time, in order to qualify as downtime. We did some research and decided to adopt the error budgeting model. This talk will be about our journey to implement it for our engineering team here at GroupBy.

We will discuss:

* The pitfalls of relying on strictly on traditional uptime calculations.
* The basic principals of error budgeting that had been agreed upon at GroupBy.
* The simpler technical means to calculate error budgeting reliably.
* How using error budgeting changed GroupBy engineering.
