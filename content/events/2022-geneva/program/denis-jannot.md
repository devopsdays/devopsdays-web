+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Advanced Authentication patterns at the Edge"
Type = "talk"
Speakers = ["denis-jannot"]
+++

With the spread of micro services, it becomes a best practice to manage the authentication at the Edge (using an API gateway) instead of implementing it independently for each service.
But this approach also introduces new challenges:
- how does the application know who the user is ?
- how can the application get more information about the user ?
- how can the application force a logout ?
- what about the authorization ?
  In this talk, I'll cover the different authentication mechanisms (OAuth, JWT, ...) and show how to overcome these challenges with practical examples and demos