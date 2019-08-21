+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How to set up a simple image building pipeline with Jenkins and Swarm"
Type = "talk"
Speakers = ["cari-liebenberg"]
Youtube = "https://www.youtube.com/watch?v=YFxDaiXdI3M"
+++

You will be taken through a process of identifying the manual parts of creating Docker images. The manual steps usually include building the image using the latest code, tagging the image and pushing the image to Docker hub. Jenkins can help us isolate these manual steps and automate them. Using Jenkins you can monitor changes in a github repo, when changes are merged into a branch trigger unit tests to run, once all unit tests pass build your new updated image, tag it and push it to Docker hub.

You will again be taken through identifying the manual steps of deploying your latest images to a server. We can use Jenkins to trigger a redeploy on swarm. Swarm will pull the latest images using a tag, these images will then be added to the running cluster and the running instances will get updated automatically. 

After we have automated these steps, we will be able to make a change to the code, push it to github and this will trigger everything through the CD and CI process without any more manual intervention.
