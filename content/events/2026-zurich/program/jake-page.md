+++
City = "Zurich"
Year = "2026"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Honey, the Audience Broke My App: Reproduce & Fix Live in Kubernetes with mirrord"
type = "talk"
speakers = ["jake-page"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

What happens when you let a room full of engineers attack your staging environment?

In this interactive session, we’ll find out together.

In Honey, the Audience Broke My App, you’ll join a live debugging mystery where every attendee gets a QR code. Most of them generate normal traffic… but a few trigger a hidden bug that crashes a real application running a staging environment in Kubernetes. Your job is simply to scan. And together we will figure out what went wrong.

We’ll walk through how to reproduce, investigate, and validate a fix without redeploying, using multiple cloud native debugging tools like kubectl debug and mirrord to run local code against a real staging environment. You’ll see how to capture suspicious requests, trace the faulty input, replay the issue locally, patch the code, and confirm the fix, all before touching CI/CD.

This isn’t a mock demo or pre-recorded failure. 

The audience really breaks the app.
We really fix it all together.

You’ll leave with a practical workflow for:

- reproducing cluster-only bugs locally,
- investigating issues in real Kubernetes environments,
- validating fixes with confidence before deploying,
- and understanding when tools like mirrord fit into your debugging toolkit.

If you’ve ever pushed a “quick fix” to staging and hoped for the best, this talk is for you.
