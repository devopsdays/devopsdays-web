+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Terraform State Is Not Just a File"
Type = "talk"
Speakers = ["david-kubec"]
youtube = ""
slideshare = ""
slides = ""
+++

"Terraform state is often treated as just a file stored in a remote backend. In larger infrastructures, however, it becomes a critical part of the system: a source of truth, a synchronization point, and an operational risk.
In this five-minute lightning talk, I will show cases where monolithic Terraform infrastructure is not the result of laziness or poor design, but of real dependencies between components. Splitting state into smaller pieces can help, but sometimes it only creates a distributed monolith with an extra orchestration layer.
Based on this problem, I will introduce KiloLock: an open-source, self-hostable HTTP backend for Terraform/OpenTofu state, backed by PostgreSQL. In its basic mode, it works as a vanilla remote backend that a team can operate itself. Because the state is database-backed, it can also add value beyond a typical blob-based backend — for example state queries, change history, or resource-level locking.
The talk is a technical look at why it may make sense to operate Terraform state as infrastructure in its own right, not just as a blob in a bucket."