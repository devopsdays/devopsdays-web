+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Automate AWS with the CLI and Shell Scripting"
Type = "talk"
Speakers = ["wes-novack"]
+++

AWS tasks are often multi-step processes. Often you have to issue a command, wait until the target object enters a particular state, and only then continue on by issuing yet another command, or click something else in the web UI. In this talk, I will demonstrate how to take control of AWS tasks using the AWS CLI and bash shell scripting. By combining the strategies discussed in this talk, you will no longer have to wait on AWS, nor will you have to employ multi-step, manual processes. Instead, let your scripts do the work for you! We'll start by introducing the AWS CLI and the basics. Next, I will demonstrate some simple aws cli commands, turn them into functions, and then move on to more complex scripting such as stopping and then starting an ec2 instance, all from one script. We'll also learn about --filter, --query (JMESPath!), and a handful of other tips & tricks.
