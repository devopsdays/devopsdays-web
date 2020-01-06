+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The solution of merge hell in monorepo"
Type = "talk"
Speakers = ["maria-guseva"]
+++

For each PR bitbucket generates {pullRequestId}/merge branch, which simulates state of target branch after merge. To ensure a green trunk we have to run all related builds on this branch. After merge of one PR results of all other open PRs will be rollbacked and you need to restart all related builds because of updated upstream. Accordingly, we get a large number of rebuilds, which is a big problem in a monorepo. We solved this problem by developing a bb plugin based on independency graph.
