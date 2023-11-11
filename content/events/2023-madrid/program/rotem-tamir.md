+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Avoid Toll Roads: Deploying Declarative Database Schema Changes"
Type = "talk"
Speakers = ["rotem-tamir"]
Youtube = ""
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

When applications change, so too must their underlying data models or database schema (commonly called “migrations”). But making changes to your database in production can be risky – causing breaking changes, data loss, and degraded performance if not handled carefully. This talk will dive into these challenges and discuss ways to make schema changes safer and more efficient.

We will explore the declarative model, used by tools like Terraform and Kubernetes which has taken our industry by storm. But can this model be trusted with our databases, the heart of our applications? We will consider ambiguous scenarios like a resource rename: can our tools accidentally plan a migration that will have a dire impact on our application?

We'll outline three possible approaches to this problem: automatic migration planning, policy-driven diffing, and the operator model, and show how they can be employed using Atlas, a modern, open-source schema management tool. Join us on this journey!