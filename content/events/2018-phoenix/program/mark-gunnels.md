+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "DevOps Should Marry Graph Databases"
Type = "talk"
Speakers = ["mark-gunnels"]
+++

During an after hours outage of a Backing Service, a pet project of mapping all the details exposed by the API of our PaaS, CloudFoundry, into Neo4J, a popular Graph Database, proved invaluable. Using the insight provided by the GraphDB, we were easily able to visualize which apps were directly dependent on the Backing Service, subsequent downstream impacts, and alert the impacted owners of the apps. 

Since then I've continued to exploit the rich information exposed by today's infrastructure to build a representation of our applications and backing services in a graph database which has led to:

* Faster time to resolutions in Incident Response situations,
* Easier impact analysis when affecting change,
* Trend analysis on where your organization is going,
* And automatically codify your infrastructure in languages like Terraform AFTER it's manually been built out.

This presentation will walk through code samples of: interrogating a set of apps deployed on CloudFoundry and their respective backing services, building a graph database from this information, and then exploiting that database for some DevOpian purposes.