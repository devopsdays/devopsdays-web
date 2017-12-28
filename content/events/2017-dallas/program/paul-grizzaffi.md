+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "I'm Hunting Sasquatch – Finding Intermittent Issues Using Periodic Automation"
Type = "talk"
Speakers = ["paul-grizzaffi"]
Youtube = "AA3CYPkVP5s"
Vimeo = ""
Speakerdeck = "https://speakerdeck.com/doddfwvol/doddfw2017-im-hunting-sasquatch-finding-intermittent-issues-using-periodic-automation"
Slideshare = ""
Slides = ""
Website = "https://www.linkedin.com/in/paulgrizzaffi"
+++

##### TALK DESCRIPTION

Most test automation approaches with continuous integration are based on events: when a build is pushed, run the automated tests. By supplementing this approach with non-event-based automation, we increase our chances of reproducing intermittent issues provided we are judicious in our application.

In American pop culture, Sasquatch (also known as Bigfoot) is likely a non-existent, ape-like, creature infrequently seen in the Pacific Northwest of North America. In the software realm, we have our own version of Sasquatch: that irritating, “intermittent issue” occurring in the system. These kinds of issues are typically difficult to find and often blamed on anything other than a product defect.

We typically run our automated tests on event boundaries, i.e. when we have a successful build and deployment; we look for problems when we think we may have introduced problems. Logically, these points of change are when we expect to have injected new issues, so, we only look for issues at those times. This approach alone, however, only gives us limited opportunities to reproduce our intermittent issues. If we also ran our automation periodically, we would have additional opportunities to reproduce these types of issues; we simply call this approach periodic automation.

Using a real-world example from his own experience, the speaker will explain how this periodic automation can help hunt down these elusive targets. For additional context, he will explain how this approach relates to High-Volume Automated Testing (HiVAT). He will also explore some considerations of which we need to be mindful when implementing periodic automation in order to avoid desensitization to failures.

Though we may never find “the real” Sasquatch, applying periodic automation increases our chances of finding our own intermittent issues.