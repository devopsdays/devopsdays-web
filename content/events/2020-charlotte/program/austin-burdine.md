+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Monorepos & Reproducible Build Systems: Tips & Tricks"
Type = "talk"
Speakers = ["austin-burdine"]
+++

When we first started to use a monorepo for our serverless application, one of the first things we needed to figure out was how to reproducibly deploy changes from any commit made to the master branch. Many of the existing solutions for managing monorepos take an “all-or-nothing” approach to deploying changes, meaning that all resources within a given repository are deployed, regardless of whether or not the resource itself has changed. By making each build reproducible (i.e. any build with the same code input would result in a build artifact with a consistent hash), it is possible to drastically reduce the number of resources deployed for each build, and make deployments as a whole faster & safer.

However, making build artifacts reproducible is not always as straightforward as it seems. While it is not overly complicated, there are a few tips & tricks needed to make consistently reproducible builds, and to make use of them in a deployment workflow.
