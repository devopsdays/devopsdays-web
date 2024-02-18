+++
Talk_date = "2023-05-23"
Talk_start_time = ""
Talk_end_time = ""
Title = "Stop Committing Your Secrets - Git Hooks To The Rescue!"
Type = "talk"
Speakers = ["dwayne-mcdaniel"]

+++

Committing secrets is a huge problem.  By the time GitHub, or other services, scans for secrets, it is far too late.  The best way to not push secrets is to never commit them.  Git provides a clean path for this and this talk will walk you through making Git your ally in keeping secrets safe.

No one wants their keys and secrets on GitHub, but one bad push can mean you are suddenly exposed. In the best-case scenario, you discover the issue and fix it before something bad happens, but in the worse case, you don’t find out until it is far too late.

Most devs are familiar with using .gitignore files to prevent Git from tracking specific files and folders, but did you know that you can leverage Git hooks and some open source awesomeness to keep you from accidentally committing your secrets in the first place?

If you are not actively using Git hooks in your workflows, then this talk is for you. Let's look into the .git folder and unlock a whole world of automation possibilities!

