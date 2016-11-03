+++
date = "2016-11-03T00:00:00-00:00"
title = "Donny Nadolny"
linktitle = "donny-nadolny"
type = "talk"

+++

<div class="span-15  ">
  <div class="span-15  last ">
  <p><strong>Title:</strong>
Three years of breaking things to make them better
</p>

<p><strong>Description:</strong></p>

<p>
For three year PagerDuty has run "Failure Friday", a weekly exercise that uses simple failures like killing a process or adding network latency to expose problems in our systems and alerting. This talk will share what we've learned in that time: how our fault injection techniques have changed, the best way to get started injecting failures in your own environment, and how you can use it to improve your software as well as your people. 
</p>
<p>
The techniques behind failure injection can be quite simple - rebooting machines, killing processes, network isolation, etc. Yet these tests catch so many problems. We've found everything from processes that don't start back up after rebooting a machine to hidden single points of failure in what were supposed to be fault tolerant distributed systems. Going beyond catching problems in software, there are so many benefits for the people who take part in it as well. We use it was a way to get new employees comfortable with running commands in production. They learn how our monitoring works, and see first hand what happens when you bring a machine down in one system, or add latency to machines in another system. I've also got one big tip for those who want to start running Failure Friday themselves: don't automate it. At least not yet. It seems that when people decide they want to try this kind of testing, they start with what they know which is writing scripts and code. What they really need to do is to get people to agree to try out failure scenarios in production first, and the automation can come much later. I'd like to share what we've learned after running this exercise for just over three years. By the end, I hope to convince the audience both that they should start their own Failure Friday, and that they can.
</p>
  </div>
</div>

