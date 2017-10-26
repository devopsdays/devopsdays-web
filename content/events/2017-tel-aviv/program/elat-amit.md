+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "1 cloud, 2 clouds, 3 clouds, tons"
Type = "talk"
Speakers = ["elad-amit"]
+++


Over the past year we’ve gone from having 1 POP in GCP to 7 in GCP and AWS
The journey took us through multiple AWS regions, a region in Azure, and one in Rackspace (all with live production traffic for prolonged periods)
We wish to share this journey and the things we’ve learned through it

At PerimeterX we build bot detection and mitigation products
Unlike similar products, we have a unique situation in which we are both out-of-band on the client application as well as in-band (i.e. block server responses) on the server application. Due to this we find ourselves with very low RTT SLAs with our customers seeing as no one wants to see their response times rise due to a 3rd party vendor :)
Couple this with the fact that we also sport CDN integrations and our customers are spread around the globe, and you get one hell of a ride which took us from one GCP POP to 7 AWS and GCP POPs, with an Azure, Rackspace, and another AWS POP along the way
During this journey we’ve had an opportunity to experience multiple cloud vendors first hand, at the same time, with our live production traffic
While the story itself is interesting, it has also allowed us to get a taste of the various issues that arise from a multi cloud environment, one that is constantly shifting between providers, as well as the various nuances between them
I believe that most people will find this story interesting and useful :)