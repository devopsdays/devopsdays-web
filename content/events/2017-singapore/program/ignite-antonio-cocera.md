+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Monitoring As A Service"
Type = "talk"
Speakers = ["antonio-cocera"]
speakerdeck = "https://speakerdeck.com/devopsdayssg/antonio-cocera-monitoring-as-a-service"
youtube = "41Uez8c6Ho0"
+++

The exponential grow of the numbers of servers and so-called micro services during the last years had drag some challenges on most of IT areas.

Monitoring been no exception, this critical part of any infrastructure required a huge an extra effort to migrate, as there was no place for monitoring blackout.

Our monitoring simply did not work, we were flood with timeouts as much as we kept adding services, becoming a pain of SRE on-call.

After long and thoughtful evaluation, we decided to move to prometheus, but this process was not straight forward Planning the full transition keeping the service online was painful, we had to build a bridge where a new system and old had to co-exist.

With all that set, we started migrated the alerts, which not only involve simply a re-write, but a change on the way we understood monitoring and understand better scalability concepts.

During the talk we will go through the following:

1) History initial situation at CloudFlare
2) Background of the issues we were encountering
3) Strategy for the migration
4) Process an execution

### Why would this talk be a good fit for the DevOpsDays audience?

All DevOps engineers have to think on scalability. Monitoring, rather to be the exception is common across all platforms, tools and technologies. I believe sharing this experience will be valuable for teams that struggles to move away for legacy systems or simply that want to solve similar issues.

{{< event_link page="program" text="view full program" >}}
