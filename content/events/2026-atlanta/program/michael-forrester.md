+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Day Claude Code Deleted My Cluster: A Cautionary Tale About AI Guardrails"
Type = "talk"
Speakers = ["michael-forrester"]
+++

"You have full access to the pipeline. Do what you need to do."
Famous last words.

In this lightning talk, I'll share the hilarious (and horrifying) story of what
happened when I gave Claude Code full pipeline access and stepped away for 30
seconds. When I came back it had not only completely wrecked the Kubernetes
cluster but not even two troubleshooting systems sessions later it wrecked
almost every network card in the set of Linux systems.

This is a story about nondeterministic systems, the illusion of AI
understanding, and why "the AI knows what it's doing" is the most dangerous
phrase in modern DevOps. I'll share the actual troubleshooting spiral that
escalated from "let me help" to "I've destroyed your cluster and systems," and
the guardrails I now enforce religiously.

5 minutes. 20 slides. And one very hilarious probably very blameful post-mortem
with Claude Code afterwards. One very expensive lesson about trusting AI agents
with infrastructure access even if it was just for a short while. Come for the
disaster. Stay for the wisdom.
