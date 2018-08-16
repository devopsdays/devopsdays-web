+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Managing AWS Infrastructure at Scale"
Type = "talk"
Speakers = ["ivan-fan"]
Youtube = ""
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = "https://www.ivanfanatic.com/"
+++

Would like to describe the transformation process GE Digital has been going through with maintaining AWS Infrastructure from point and manual click to source controlled to peer-reviewed infrastructure as code.

Describe some of the challenges faced during this transformation: 

1. Culture 
2. Git good with Git. 
3. Keep it simple stupid. (Start Small). 
<br> 

We started with standardizing our IAM resources across our 100+ AWS Accounts. Leverage terraform modules that get deployed to all 100+ accounts.
<br>

Describe the use of our CI Jenkins Packer.io pipeline for creating custom AWS AMI images and the benefits of custom AMI images + terraform provisioning. Why this is a game changer at Predix.IO for scaling out instances in AWS. - NTP - Cyber Security Inspection Hosts - Bro and Suricata - NATs - VPN stack integrated with AD - Jumphosts Managed by AD