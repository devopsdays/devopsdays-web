+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Managing the ‘Git’ Half of ‘GitOps’: How To Structure Infrastructure Code Repositories"
type = "talk"
speakers = ["jim-sheldon"]
sharing_image = "jim-sheldon-card.png"
+++

With popular GitOps tools such as Argo CD and Flux CD, managing your Kubernetes configurations in Git repositories has never been easier. Unfortunately, often the structure of this code in Git repositories is an afterthought, which can lead to significant refactoring in the future.

This talk covers four approaches for structuring the code applied by GitOps tooling:

Application and infrastructure code in one repository
Separate infrastructure repository, multiple branches
Separate infrastructure repository, directory-based
Multiple infrastructure repositories, one per environment

With each approach, I will present the benefits and potential drawbacks. The conclusion of the talk centers around the fourth approach, which I feel is best for most teams.