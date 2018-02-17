+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Strategies To Edit Production Data"
Type = "talk"
Speakers = ["julie-qiu"]
+++

At some point, we all find ourselves at a SQL prompt making edits to the
production database. We know it's a bad practice, and we always intend to put
in place safer infrastructure before we need to do it again, but what does a
better system actually look like?

This talk progresses through 5 strategies for teams using a Python stack to do
SQL writes against a database, to achieve increasing safety and auditability:

* Raw SQL queries 
* Local one-off scripts 
* Deploy and run scripts from an application server 
* Run scripts from Jenkins with command line arguments 
* Build a Script Runner application

We’ll talk about the pros and cons of each strategy, and help you determine
which one is right for your specific needs.

By the end of this talk, you’ll be ready to start upgrading your infrastructure
for making changes to your production database safely!
