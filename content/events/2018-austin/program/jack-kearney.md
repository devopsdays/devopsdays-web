+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Blockchain Infrastructure @ Coinbase"
Type = "talk"
Speakers = ["jack-kearney"]
+++

Coinbase has some fairly unusual security & infrastructure requirements. One of these requirements is that every server in our infrastructure is both ephemeral (< 30 days) and immutable. The deploy process for most applications is fairly straightforward: 12-factor apps are blue/green deployed behind a load balancer. Blockchain nodes, however, present a difficult problem: how do you blue/green deploy a server with 300GB on disk? In this session I'll talk about how we solved this problem in a Blockchain-agnostic fashion using a new project called Snapchain.