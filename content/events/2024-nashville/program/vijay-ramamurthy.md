+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Microservices and Multiple Sources of Truth: It’s Not Your Fault"
Type = "talk"
Speakers = ["vijay-ramamurthy"]
+++

Microservices applications aspire for every piece of data to have one microservice as its source of truth. And yet, in practice, this breaks down. Needing to compute low-latency answers to questions involving data that’s scattered across multiple services can seem like a failure in architecting microservice boundaries, or like a consequence of unusual and unique business requirements that require an inelegant solution.

For a microservice to answer even a simple request, such as displaying a list of entities to a user, it has to first join together data from multiple different services to determine which entities the user is allowed to see. If these entities are children of a parent entity, we need to know from the parent’s service whether the user is allowed to see each parent; which could in turn involve information from a multitenancy service about whether the user is a member of the parent’s tenant. We’re left with a tradeoff between doing hundreds of network requests and answering the question slowly, or duplicating our data so that we can answer questions that involve a centralized view of the data, which comes with the burden of keeping multiple sources of truth in sync. This is exacerbated by the complexity and evolution of how the disparate pieces of data combine into an answer. Do we need different views of the other services’ data to determine whether we can edit, or delete, a child entity? What if, in the future, the parent entities can be shared across multiple tenants?

I want to make the point that it’s not only natural, but common, for applications to need data from multiple services to determine whether a request to a particular service is allowed; and for this question to need to be answered more quickly than the network requests in a single-source-of-truth world would afford. Using the example of a microservice rendering a list of entities to a user, I’ll talk about why such a simple request gets so complicated so often; tradeoffs in various approaches to the problem; and how to solve the problem in general without defeating the purpose of a microservices architecture.
