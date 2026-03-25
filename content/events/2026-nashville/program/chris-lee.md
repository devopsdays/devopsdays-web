+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "I Vibe Coded an App. Now What?"
Type = "talk"
Speakers = ["chris-lee"]
+++

You used AI (Cursor, vibe coding) to build an app. Then you hit the wall: Now what? It needs a URL, auth, CI, and a way to find bugs before users do. This talk presents a repeatable “day two” checklist for moving to production: hosting on Vercel, DNS, data with Airtable, authentication with Clerk, GitHub for PRs and review, and GitHub Actions for lint and test on every push. We use git hooks (Husky) so the same test suite runs locally before every push, and Cursor agents to find issues, running “find bugs,” “check for auth leaks,” or “review this diff” so the AI does the first pass before human review. The DevOps connection: AI got us to “working code” fast; the same tooling (Cursor + agents) and pipeline (GitHub + Actions + Vercel) get us to deployed, reviewed, and maintainable without throwing away the vibe. Principles in play: automation (CI, cron, agents, hooks), feedback loops (PRs, tests, agents), and security by default (Clerk, env vars, CRON_SECRET)
Key Takeaways
“I vibe coded an app” is only half the story. The other half is hosting, auth, DNS, CI, and review.
We use Cursor agents for finding issues; GitHub + Actions for PRs and CI; Husky so the same tests run locally; Vercel for hosting, Clerk for auth, and Airtable for data.
The same AI that helped build the app now helps operate it through continuous "review assistance."
The test suite is the same everywhere: run by git hooks before push, run by GitHub Actions on every push/PR, and required before merge so deploys are safe.


