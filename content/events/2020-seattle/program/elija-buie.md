+++
Talk_date = "2020-04-14"
Talk_start_time = "13:40"
Talk_end_time = "14:10"
Title = "Who needs Keys? Assuming IAM roles with KIAM on Kubernetes"
Type = "talk"
Speakers = ["elija-buie"]
+++

Let’s face it, managing AWS Identity and Access Management (IAM) access keys is a chore, even with a single application. Where are you storing your access keys? What is their rotation policy? Is your application currently using expired keys? And that’s just for one application. Pile on Kubernetes and application multi-tenancy, and you run into a key management nightmare! Enter KIAM, an open-source Kubernetes solution for granting application pods the ability to assume IAM roles, without the use of access keys.
