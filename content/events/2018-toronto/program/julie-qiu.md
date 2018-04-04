+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Strategies to Edit Production Data"
Type = "talk"
Speakers = ["julie-qiu"]
+++

At some point, we all find ourselves at a SQL prompt making edits to the production database. We know it’s a bad practice and we always intend to put in place safer infrastructure before we need to do it again — what does a better system actually look like?

This talk progresses through 5 strategies for teams using a Python stack to do SQL writes against a database, to achieve increasing safety and auditability:

1. Develop a process for raw SQL edits
2. Run scripts locally
3. Run scripts on an existing server
4. Use a task runner
5. Build a Script Runner service

We’ll talk about the pros and cons of each strategy and help you determine which one is right for your specific needs.

By the end of this talk you’ll be ready to start upgrading your infrastructure for making changes to your production database safely!
