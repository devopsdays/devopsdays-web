+++
Title = "Expand Contract Pattern for Continuous Delivery of Databases"
Type = "talk"
Speakers = ["leena-s-n"]
+++

Modifying the schema of a production database is hard. If something goes wrong, the impact on both customers and the team can be enormous. And it can be hard or even impossible to rollback a database schema change if things go wrong. And the same is true for any architectural change for a production application.

The Branch by Abstraction and Strangler Pattern makes significant application changes easier. Are there any similar patterns we can use to make production database changes less risky?

Indeed, there are. The Expand/Collapse pattern is a blueprint for making the database migration. It makes the remodelling both reversible and safe. By expanding the application to accommodate both the old and the new schemas in parallel, we can give ourselves time to:

Migrate any downstream dependencies on the old database schema
Gain confidence that the migration is safe
We contract the application to the new version, once we’ve satisfied that the old schema is no longer needed.

The pattern helps to make significant, but necessary refactorings to your data model in a continuous delivery way. Most importantly, without threatening the robustness of your production applications.

While working with our product GoodKarma, I’ve successfully applied this pattern to make major changes to the core of the application, all while serving customers in production. I’ve learned some important lessons about how to best implement the Expand/Contract pattern.

In this session, I’ll share my experiences on how to avoid pitfalls and succeed at these kinds of major data remodelling with hardly any downtime.
