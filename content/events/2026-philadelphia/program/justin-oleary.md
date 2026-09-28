+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Operator Calls Are Coming From Inside the Namespace"
Type = "talk"
Speakers = ["justin-oleary"]
+++

Kubernetes operators are supposed to make life easier. Give them cloud credentials, point them at your provider, and they'll provision infrastructure for you. Config Connector, ACK, ASO, Crossplane — they all work the same way.

They also all have the same problem.

I spent six months hunting bugs in these operators. Most of them trust user-supplied references without checking if the user should actually have access to what they're referencing. Create a custom resource pointing at someone else's cloud resources, and the operator will happily modify them using its own credentials. Your RBAC says you can only touch your namespace. The operator's service account can touch everything.

This talk covers what I found, how the attacks work, and what to check before you deploy operators in production. No slides full of vendor logos — just patterns I saw across four projects and the guardrails that would've stopped them.