+++
title = "Dan Young"
type = "new-talk"
speakers = [
        "dan-young",
]
+++
**Title:** McRouter: Over 100 billion Memcache GETs served

**Description:**

New Relic uses [McRouter](https://github.com/facebook/mcrouter), a [Memcache](https://memcached.org/) proxy/router, for scaling our cache infrastructure. This Ignite talk will cover what McRouter is and how we use it to scale out Memcache for our microservices.

McRouter (created by Facebook) supports sharding, replication, connection pooling, cache warming, and flexible routing. I'll show some of the basics and a few examples of how rich routing policies let us design our caching infrastructure.