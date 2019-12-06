+++
Title = "Rhys Evans"
Twitter = "wheresrhys"
image = "rhys-evans.jpg"
type = "speaker"
linktitle = "rhys-evans"
+++

### Speaker

Rhys is a former front-end developer who has crossed the road to become a reliability engineer. He works at the Financial Times, building tools to help other teams operate reliable services. Out of work he spends his time birdwatching, playing musical instruments badly and wondering if the new Alan Partridge series is ever going to arrive on our screens.

If you like his talk, please consider donating to [Refugee Support](https://www.refugeesupport.eu/)

*** 

### Quick Q&A With Rhys Evans

> *We had a chance to catch up with Rhys and ask him a few questions about transformations and graph DBs.*

**[Miguel Alho](/events/2019-portugal/contact/): Hi Rhys! You’ve been at the Financial Times for a while now, going through most of its tech transformation. You moved into SRE throughout that process. How did that come to be?**

**Rhys Evans**: I was a front-end developer for most of my career, and really didn't care, or even know about any operational matters. But the team building the new presentation layer of [www.ft.com](http://www.ft.com) was given more freedom over technical decisions than ever before, which meant taking more responsibility for operating the site that was built. This introduced me to lots of new aspects of being a developer, ones that I was quite surprised I enjoyed. If you'd told me 5 years ago that I would soon enjoy looking through log files I would have laughed at you!

I gradually left building front-end features behind, concentrating on more operational matters, from optimising the site's performance, to coordinating the decommissioning of legacy dependencies and improving our understanding of what we had built. When the new Reliability Engineering team at FT was established, it felt like a natural transition to be able to apply the things I'd learned and the ideas I had to more areas of the FT technology department.

**MA: My experience in some projects is that graph databases tended to be a hard sell to some managers, even when the domain would clearly benefit from that model. How did that process of choice come to be at FT, when you decided to adopt a graph db model?**

**RE**: As I don't come from a backend & database background, I'm perhaps not the best person to answer this question. Also the FT has a quite liberal tech decision making policy, so teams are generally trusted to understand the problems they are tackling and make wise choices. I can understand why managers might be resistant to experimental tech, but encouraging a culture of sensible experimentation (don't trial an experimental DB on your critical inventory system first!) can develop the trust that can make experimenting normal.

The story of neo4j at FT is in fact a good example of this. The tech lead of a team I was on thought a graph db would be good for modelling content personalisation for our new [www.ft.com/myft](http://www.ft.com/myft) feature; a valuable feature, but not business critical. Seeing our successful use of neo4j, our publishing platform team began to try neo4j to model metadata - a more business critical use case, but the previous implementation was struggling anyway, so it felt like it was worth trying something new. A few years on, members of those teams have joined other areas of the FT, taken the knowledge with them, and now neo4j is not seen as at all experimental; if the project requires highly connected data to be modelled, neo4j is our natural first choice.

**MA: Based on your experience with graph DBs, have you seen any downsides or gotchas people should be aware of?**

**RE**: Graph db's are great for modelling data - far better than the alternatives in many cases - but it can sometimes be problematic designing systems on top of that. It's not so much a problem with the database though, more a side-effect of going all-in with having a highly connected data model. If you used an SQL solution to model highly connected data, you'd still have all these problems, plus having to maintain a highly connected SQL DB. A couple of examples:

- Accessing the data is now all about following arbitrary connections between lots of different types of data, and a traditional REST API is an awkward tool for achieving this. It means your users must implement their own traversal logic and make lots of API calls. We use GraphQL to address this, but this comes with its own problems, such as designing effective caching and pagination. We haven't had to do this yet because the underlying data store is performant enough, but this might not always be the case.
- Reacting to changes in this data becomes far more difficult. In a less-connected model, changes are relatively local, so the fan out of reactions to an update event is limited. With a graph though, you can expect consumers of the data to be interested in records that are connected via an arbitrary number of steps - because it's easy and useful to do this - so a single change event can fan out into hundreds of API reads by consumers that want to update related views of the data. Designing the right amount of data to put in these events is crucial, and writing consumers that do the minimum amount of work in response to these events adds complexity. I'd recommend thinking about this particular problem up front as it can quickly go from being fine to knocking out your service if you're not careful.

**MA: Thank you so much! Can't wait to see our talk at DevOpsDays Portugal!**

*** 