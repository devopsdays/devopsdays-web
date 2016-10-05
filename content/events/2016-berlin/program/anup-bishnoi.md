+++
date = "2016-10-03T15:44:27+02:00"
linktitle = "anup-bishnoi"
title = "Anup Bishnoi"
type = "ignite"

+++

<div class="span-15  ">
  <div class="span-15  last ">
  <p><strong>Title:</strong>
Implementing versioned service discovery in 100 Lines Of Code
</p>

<p><strong>Description:</strong></p>

<p>

Service discovery has been made too complex by "complexing" it with orchestration. There are too many beasts-of-a-tool out there that do too much, and yet don't service versioning in service discovery.
This talk will walk you through 100 lines of Node.js code with no dependencies other than redis, and implement a service discovery service with the following features:
<br>
Semantic versioning of services<br>
Services depend on specific versions of other services, so v1.2.3 & v1.3.0 can be both live, and you kill off old services that have no users.
<br>

Live health checks with inversion of responsibility<br>
Don't ping a service under high load with status & health checks, instead let it ping back when it can. If it can't ping back because it's near-capacity, then don't route any more traffic to it!
<br>

Mocking services during testing & development<br>
Should not have to bring up the entire microservices stack do develop one of them.
<br>

Randomized scheduling<br>
So you don't starve any one service, instead pick one at random from the ones available & healthy.
<br>

No highly-available service discovery service<br>
Solving the chicken & egg requirement of a highly available service discovery service, in order to enable other highly available services. Only the service discovery database (redis) needs to distributed (redis cluster).
<br>
A surprising number of tools out there simply fail to provide these features, and yet come with too many other things they want to do. This talk does the above in easy-to-understand 100 LOC that you can use & modify with confidence!
</p>
<p>

  </div>
</div>

