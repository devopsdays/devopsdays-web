+++
City = "Amsterdam"
Year = "2016"
date = "2016-03-06T21:28:07-06:00"
title = "Harm Weites"
type = "talk"
aliases = ["/events/2016-amsterdam/program/harmweites/"]

+++

<div class="col-12">
<p><strong>Title:</strong> One engineer, four environments, no termination policy.</p>

<p><strong>Description:</strong></p>

<p>Terminating all environments just days before going live and getting back from scratch. We were days away from going live with our AWS Mesos stack until one unlucky engineer ran a faulty playbook.</p>

<p>This talk will focus on how we build and operate the new Wehkamp stack. We’ll start at the AWS level where we have several hundred instances, ELB’s and supporting services. On top of those instances we run services like Mesos, Consul, Kafka, ElasticSearch and Cassandra. Our real workload lives on Mesos, the microservices architecture we call Blaze. Next we’ll go over what happened in the days before we flipped the switch to go live, and the steps involved creating everything from scratch. How we utilize ansible and we’ll briefly touch Jenkins as our CI/CD tool. The final words will describe our plans in this area for the near future, and the improvements on what we’ve seen so far.</p>

</div>
