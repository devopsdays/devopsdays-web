+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Managing Data in Microservices"
Type = "talk"
Speakers = ["randy-shoup"]
youtube = ""
+++

This session is about the hard stuff – managing data in microservices – 
and about sharing proven patterns that have been successful at Google, 
eBay, and Stitch Fix. It begins with a quick tour of some prerequisites 
for being successful with microservices – an organization of small teams 
with well-defined areas of responsibility; processes for test-driven 
development and continuous delivery; and a DevOps culture of “You Build 
It, You Run It.”

The majority of the session is spent on managing data. It covers the need 
to isolate a microservice’s data store behind the service interface, as 
well as the various persistence mechanisms for managing data. It discusses 
using events as a first-class tool in our architectural toolbox. It covers 
techniques for service extraction from a monolithic database. Then it composes 
those building blocks to build up patterns for handling shared data, joins, 
and transactions in a microservice world.

It concludes with lessons learned, as well as suggestions for how you can 
implement these ideas successfully in your own organization.
