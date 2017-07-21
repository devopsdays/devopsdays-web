+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "What Are You Running? PuppetDB Knows."
Type = "talk"
Speakers = ["rich-burroughs"]
+++


Infrastructures are growing rapidly and becoming more complex. Wouldn’t it be
great to have an easy way to keep track of your nodes and what’s running on
them? If you’re using Puppet Enterprise you have one already: it’s called
PuppetDB. You can use PuppetDB with open source Puppet too.

PuppetDB automatically stores a lot of data about all of your Puppet managed
nodes, including all of their facts and resources. At Puppet our Site
Reliability Engineering (SRE) team uses PuppetDB as the source of truth about
our Puppet managed nodes. We’ll show you how you can leverage PuppetDB to learn
more about your infrastructure.

In this talk you’ll learn how to tap into your already available PuppetDB data
in three ways:

- Using the Puppet Query Language (PQL) CLI
- Queries in your Puppet code for dynamic service discovery
- Grabbing data from the PuppetDB APIs using Python

We’ll also show you some ways you can make additional data available in
PuppetDB, using custom facts and defines. And we’ll give you a look at a how we
use these techniques on the SRE team at Puppet, including code examples.

If you haven’t mined your PuppetDB data, it’s a lot easier than you might think.


