+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Your Agent Escaped Without Escaping the Sandbox"
Type = "talk"
Speakers = ["yossi-eliaz"]
+++

Every namespace and cgroup can work exactly as designed and an agent can still cause a real breach. This talk demonstrates four non-escape escapes: inherited credentials, dangerous mounts, exfiltration through an allowed endpoint, and verifier tampering. Then we close each one at the layer that can actually enforce it: real process isolation, capability-scoped filesystems, short-lived credential projection, and tamper-evident execution history. You leave with four boundaries you can check against your own agent deployment.
