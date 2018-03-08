+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Providing and Supporting Docker Images"
Type = "talk"
Speakers = ["philipp-krenn"]
youtube = "USwL0iDLMjI"
speakerdeck = "https://speakerdeck.com/xeraa/providing-and-supporting-docker-images"
+++

Docker is eating the world. If you want to be taken seriously, you need to provide containers to your users. It's easy - everybody is uploading containers to Docker Hub, right? Unfortunately, reality is never as easy as it sounds at first. This talk gives an overview of Elastic's ongoing journey to providing official Docker containers:
* Docker Hub: What "official" really means and why we are using our own registry.
* Base image: Just use Alpine - it is small and the perfect fit for containers. We tried that and reconsidered...
* Release policy: What do you actually get in a specific tag and how we are releasing our images?
* Support: Combine two complex Systems like Elasticsearch and Docker - and you will get a lot of questions.
* Expectations: Our current approach for orchestration and how we are treating feature requests.

