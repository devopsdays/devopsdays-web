+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Using Git with PGP (and why you should care)"
Type = "talk"
Speakers = ["konstantin-ryabitsev"]
+++

All commits in a git repository are chained, but this doesn't mean that they cannot be spoofed, edited, or quietly deleted. Using cryptographic signatures with all git tags and commits helps ensure that your repository remains immune to malicious tampering.

Your code is your reputation as a developer. It is also, by extension, the reputation of your project, your team, and your company. Git is a great tool for distributed development, but it is not an immutable ledger of commits in the same way blockchains are. Git history can be rewritten in order to introduce malicious code, and the commit message can be spoofed to make it look like you were the one who did it.

To solve this problem, Git integrates with PGP to offer cryptographic signatures for tags and commits, allowing anyone to easily verify the integrity of each git object and that of the repository as a whole. This talk will teach you the importance of cryptographically signing tags and commits as part of your daily git hygiene, and will offer recommendations and best practices on how to best integrate it into your team and CI workflow.
