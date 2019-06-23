+++
Talk_date = "2018-04-13"
Talk_start_time = "10:50"
Talk_end_time = "11:20"
Title = "Recognizing Zombies, Black Holes Tribbles, before you get eaten: Techniques to avoid cascading failure"
Type = "talk"
Youtube = "MWQZ4vDEeSk"
Slides = "https://github.com/AveryRegier/presentations/blob/master/Recognizing%20Zombies%20and%20Black%20Holes.pdf"
Speakers = ["avery-regier"]
+++

Complex mixes of monoliths, micro-services, databases, data centers, networking, and cloud providers provide a dizzying array of opportunities for your services to fail. No one has perfect failover, so you have be prepared to play defense.

We will look at three categories of failures and ways to recognize them coming, and avoid spreading the carnage they cause to other services you provide.

* *Zombies:* Long running but abandoned requests that eat up memory and crash the system long after the user who conjured it gave up.

* *Black Holes:* Dependent services that take connections but never give them up, or perform so poorly for a time that all your attention eventually gets focused on that one thing.

* *Tribbles:* Similar requests that you normally invite, but they come too many, too fast for your service to handle as they take your attention and eat up all your resources.

You can expect to see:

* Novel concurrent data structures for tracking ongoing work used as a basic building block for recognizing Zombies, Black Holes & Tribbles.

* Circuit Breaking: Statistics used for recognizing normal and when to stop using a dependency.

* Dealing with the behavior differences of highly vs little used and fast vs slow dependencies.

* Sci-fi references and Horror Stories.
