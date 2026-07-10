+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "What should you actually ask an AI agent to do?"
Type = "talk"
Speakers = ["matilde-aliffi"]
+++

AI agents with access to consequential tools are being integrated into production environments at a pace that has outrun the development of norms around their use. Current engineering discussion has focused largely on what happens after delegation: sandboxing, scoped credentials, monitoring, audit logs. These controls matter. But they address a downstream problem. The risk is often introduced earlier, at the point where an engineer decides what to hand to the agent in the first place.
This ignite talk explores the delegation decision itself. I argue that delegation thresholds should be stakes-sensitive: before handing a task to an agent, engineers should assess its blast radius, reversibility, ambiguity, and observability. The higher the stakes, the stronger the justification required to proceed. Drawing on epistemology and platform engineering practice, I will show how these ideas can be translated into a lightweight delegation framework.