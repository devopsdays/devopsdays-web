+++
Title = "War stories: It Takes Forever To Ship"
Speakers = ["rodo-abad"]
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Type = "talk"
+++

### Elevator Pitch

How we reduced our build time from 1 hour and 17 minutes to less than 10 minutes.


### Description

Our software engineer has just finished submitting a pull request to the core repository to update their product's package version. The pull request will run a verification job in which one of the tasks is to makes sure the application can be built—our software engineer needs to wait for at least 1 hour and 17 minutes.

The pull request eventually is merged and it's time to run the verification process again to make sure the application can still be built, together with all the other pull requests that have also been merged—our software engineer needs to wait again for at least 1 hour and 17 minutes.

That's roughly a total build time of 2 hours and 34 minutes for our software engineer to have to wait. Have you noticed that I've only mentioned build time? Because there's still other things happening like installing dependencies, running tests, publishing, deploying, releasing, etc. Those are for other war stories. For our current war story, we'll focus specifically about the build time.

Let's now try and scale our overall view up—our software engineer is part of a 6-10 people product team, of which there are close to 40 total product teams.

With a minimum of 2 hours and 34 minutes of build time to get your feature into the main branch, at any given day you are only allowed a total of roughly 3 deployments per day. Let me repeat what I said in a different way—a product with almost 300 individual contributors can only deploy a maximum of 3 times per day.

Thus, an issue is born.