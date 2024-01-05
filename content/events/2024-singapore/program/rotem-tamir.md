+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Schema-as-Code: Developer platforms and database schema changes"
Type = "talk"
Speakers = ["rotem-tamir"]
sharing_image = "singapore2024.png"
+++

In this talk, we explore the challenges of database schema changes at scale. We will demonstrate ways we can apply modern concepts such as Continuous Integration and Infrastructure-as-Code to build robust developer platforms that can make database changes both safer and faster at the same time.

Database schema changes are a risky business. If you’re not careful, you can introduce a breaking change that can bring your application down, run a destructive change that results in data loss or accidentally lock a table for writes for a long period of time.

When observed through the lens of widely accepted metrics for software delivery such as deployment frequency, change failure rate, etc we can see how the way most teams manage database schema changes today has an adverse impact on their performance. Simply put, teams are generally super careful when it comes to planning and applying changes to the database, choosing safety over velocity.

In this talk we will review: * The risks associated with making database schema changes, and the shortcomings of current approaches to managing them. * Schema-as-Code: how modern tools, such as Atlas (an OSS schema management tool) apply proven principles from other DevOps domains to make database schema changes both safer and faster at the same time. * How to build schema change management capabilities into your developer platform today.