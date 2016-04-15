+++
City = "Toronto"
Year = "2016"
date = "2016-03-06T21:28:07-06:00"
type = "event"
title = "John Arthorne"

+++

### Scaling out Continuous Delivery

**Abstract:**

Continuous delivery can be a simple practice when you are a small development team with a low scale web application. However, as teams scale up in size, commit and test volumes increase, and production architecture becomes more complex, continuous delivery becomes harder to achieve. Tools that once handled the load begin to fail, individual steps in the delivery process that were once fast turn into bottlenecks, and cultural practices and processes break down.

This talk will describe how Shopify faced these scaling challenges as the team and its application infrastructure grew. A year ago, it could take hours for a developer to go from commit to fully deployment application. In response, the team re-architected its entire delivery pipeline to hand these scaling challenges. We cover how moving to a container-based build and creating the open source Shipit deployment tool allowed the team to regain its continuous delivery cadence.

Today, every developer on a team of hundreds can deliver a change from commit to production in ten minutes. Each deploy includes execution of over 45,000 tests in a massively parallel build farm, and deploying the application to hundreds of servers in multiple data centres. Thirty or more production releases now run in a typical workday, and developer happiness has increased. We will cover the steps taken to get here, the technology choices made, and the stumbling blocks faced along the way.

**Speaker:**

John Arthorne, <a href="https://twitter.com/jarthorne" target="_blank">@jarthorne</a> 


John works on the Shopify Production Engineering team, with a specific focus on creating developer tooling to accelerate application delivery. John is a <a href="http://jarthorn.github.io/" target="_blank">frequent speaker</a> at technical conferences in both Europe and North America, serves on conference program committees, is a JavaOne Rock Star, and frequently writes blogs and articles on technical topics. His current interests are in tools and practices for Continuous Delivery, and in highly scalable cloud architectures. Before joining Shopify, John led a team building cloud-based developer tooling for IBM Bluemix, and was a <a href="https://wiki.eclipse.org/User:John_arthorne.ca.ibm.com" target="_blank">prominent leader</a> within the Eclipse open source community.
