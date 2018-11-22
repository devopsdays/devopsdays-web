+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Deploy and Destroy: Testing Environments "
Type = "talk"
Speakers = ["michael-arenzon"]
+++

You’ve joined a startup. Wrote a few lines of code. Thousands. Product becomes successful. Company grows. You realize that you’re not the same 10 person team you’ve been year ago. Now you have N(>100) micro-services in X(>3) different programming languages with 5-10x engineers. And all these micro-systems becomes into one, singular product.

If that’s your situation, congratz! Cause your productivity is now low. You can’t commit, push and throw the changes to production. You need to verify the correctness of your changes. You need to understand the implications and how they affect this universe you call ‘the system’.

In this talk, I won’t solve all the problems related to engineering team / system growth. But I’ll focus on testing environments: how they should be manage, why developers need the self-serve platform to create environments on-demand, and how we can restore back the lost velocity caused by success. I’ll cover internal system we built called ‘Namespaces’ that aims to solve exactly that issue - environment on demand, in a click of a button, with the help of Mesos / Marathon, Docker, Traefik, and Consul.



