+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Forkable Snapshots: Fast, Isolated Sandboxes for Coding Agents"
Type = "ignite"
Speakers = ["yossi-eliaz"]
+++

Autonomous coding agents need fast, isolated environments to test and retry changes. This talk presents a forkable-snapshot sandbox architecture built for LangChain Deep Agents (open-sourced as langchain-islo), letting agents branch, execute, and roll back state in seconds instead of rebuilding containers. I'll cover why snapshot-based sandboxing beats fresh-container-per-attempt for agent workloads, the fork/execute/discard architecture, and a real benchmark where a four-step proposer pipeline went from 0/5 to 5/5 passing tasks in about 2 seconds per fork. Drawing on my background in container security (Twistlock) and AI systems engineering at Incredibuild/islo.dev, I'll share concrete lessons on isolation boundaries and orchestrating multi-agent retries safely.