+++
Talk_date = "2023-05-25"
Talk_start_time = "11:10"
Talk_end_time = "11:25"
Title = "Ephemeral Environments from GitHub Pull Requests"
Type = "talk"
Speakers = ["karl-haworth"]
+++

We found that when developers created Pull Requests to have their code reviewed or to preview their work themselves with credentials in a real environment, that often developers work was overwriting one another fairly quickly. If a developer stands up to get a coffee by the time their preview environment is ready it could have already been overwritten by another developers pull request causing another run to occur. Using Kubernetes Operators and our existing developer portal we found an easy way to launch short lived environments on our Kubernetes environment that used GitHub pull requests as the trigger mechanism to create new preview environments for our developers. This provided unique URLs allowing developers to preview or review pull requests without interruption.
