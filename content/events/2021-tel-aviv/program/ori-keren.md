+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "HOW TO OPTIMIZE NON-CODING TIME"
Type = "talk"
Speakers = ["ori-keren"]
+++

Github Copilot and tools that help us code better are cool. But I’m lucky if I spend 90 minutes a day writing code. We really need to optimize the hours we spend reviewing code, updating tickets and tracing where our code is deployed. Learn how I save an hour a day streamlining non-coding tasks.

This talk is unique because 99% of developer productivity tools and hacks are about coding faster, better, smarter. And yet the vast majority of our time is spent doing all of this other stuff. After I started focusing on optimizing the 10 hours I spend every day on non-coding tasks, I found I my productivity went up and my frustration at annoying stuff went way down. I cover how to save time by reducing cognitive load and by cutting menial, non-coding tasks that we have to perform 10-50 times every day. For example:

- Bug or hotfix comes through and you want to start working on it right away so you create a branch and start fixing. What you don’t do is create a Jira ticket but then later your boss/PM/CSM yells at your due to lack of visibility. I share how I automated ticket creation in Slack by correlating Github to Jira.

- You have 20 minutes until your next meeting and you open a pull request and start a review. But you get pulled away half way through and when you come back the next day you forgot everything and have to start over. Huge waste of time. I share an ML job I wrote that tells me how long the review will take so I can pick PRs that fit the amount of time I have.

- You build. You ship it. You own it. Great. But after I merge my code I never know where it actually is. Did the CI job fail? Is it release under feature flag? Did it just go GA to everyone? I share a bot I wrote that personally tells me where my code is in the pipeline after it leaves my hands so I can actually take full ownership without spending tons of time figuring out what code is in what release.