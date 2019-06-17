+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "What I Learned From A Dress, an On-Call Nightmare"
Type = "talk"
Speakers = ["jay-gordon"]
+++

In 2015 the viral internet moment of “The Dress” occurred that completely changed what I knew about deploying production web servers. As the on-call resource over the evening I saw web traffic that peaked at 670,000 active visitors on BuzzFeed.com. In this talk, I share lessons on the moment.


After a day of managing a physical datacenter build and dealing with a bunch of llamas getting loose in Los Angeles, I came home to what I hoped was an average evening. After a meal and a quick shower my phone began blowing up with alerts. My wife was sitting on the couch and turned to me, and asked “oh is that about the dress?” I ask her, “what dress?”

A dress was shared on the internet that people seemed enamored with due to a visual trick that caused people to see the dress in different colors. This set off a huge interest in sharing what people thought the color was. BuzzFeed’s editorial team quickly used a NoSQL backed database app to quickly capture votes from the dress crazed masses.

There was one big problem, no one could do anything else. The rest of the website’s backend failed causing front end servers to no longer be able to serve new web traffic.

After a several hour alert incident and various remediations the team I worked with were able to place a reasonable fix in order to keep the mass of traffic coming to our app for collecting people’s votes. The toll an incident like this takes on a team is tremendous. I can explain how old ideas with trusted technology can still lead to failure that can’t be predicted.

Attendees should also take away an understand of the human cost of toil in a team when you’re not sure how the traffic is going to come.
