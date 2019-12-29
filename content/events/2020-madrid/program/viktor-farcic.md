+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Choosing The Right Deployment Strategy"
Type = "talk"
Speakers = ["viktor-farcic"]
+++

For many people, deploying applications is transparent or even irrelevant. If you are a developer, you might be focused on writing code and allowing magic to happen. By magic, I mean letting other people and departments figure out how to deploy your code. Similarly, you might be oblivious to deployments. You might be a tester, or you might have some other role not directly related to system administration, operations, or infrastructure. Now, I doubt that you are one of the oblivious. The chances are that you would not be even reading this if that's the case. If, against all bets, you do belong to the deployment-is-not-my-thing group, the only thing I can say is that you are wrong.

Deployment strategies affect everyone, no matter whether we are focused only on a single aspect of the application lifecycle or we are in full control. The way we deploy affects the architecture, testing, monitoring, and many other aspects. And not only that, but we can say that architecture, testing, and monitoring affect the way we deploy. All those things are closely related and affect each other in ways that might not be obvious on the first look.

We'll discuss different deployment strategies and answer a couple of questions. Is your application stateful or stateless? Does its architecture permit scaling? How do you roll back? How do you scale up and down? Do you need your application to run always? Should you use Kubernetes Deployments instead of, let's say, StatefulSets? Those are only a few of the questions you need to answer to choose the right deployment mechanism. But, answers to those questions will not serve much unless we are familiar with some of the most commonly used deployment strategies. Not only that knowledge will help us choose which one to pick, but they might even influence the architecture of our applications.

We'll explore serverless, recreate, rolling update, and canary deployment strategies.