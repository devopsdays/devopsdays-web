+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Immutable SQL Server Clusters"
Type = "talk"
Speakers = ["john-bowker"]
+++

Swapping nodes in and out of our SQL clusters is exactly what we did; running in prod with 0 downtime and through an automation framework.

While we were able to automate the building of a cluster to an hour in AWS it was still static and managing it became just like it was in the old hosting providing.

Often databases get forgotten about when it comes to automation and the app servers have all the fun but databases don’t always need to be pets. They can become long living cattle.

This talk will go over the steps we took to enable this automation and what lessons we learnt while doing it during a pressure filled migration from our previous hosting partner to AWS.