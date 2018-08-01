+++
City = "Zurich"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Getting Configurations Under Control - First Steps"
type = "talk"
speakers = ["marcin-niewiadomski"]
youtube = ""
vimeo = "272538018"
speakerdeck = "https://speakerdeck.com/dodzh/getting-configurations-under-control-first-steps-marcin-niewiadomski"
slideshare = ""
slides = ""
+++

One of challenges we had in our system is huge amount of parameters (literally tens of
thousands). Such huge amount of parameters leads to long deployment preparation times. And
things can still get "broken" too as system sometimes manipulates configuration on its
own.

Of course the real solution is to deliver proper configuration automatically, but you need
to start from somewhere.

The talk would share our experience from simply putting all of those parameters spread
among hundreds of files into distributed version control. Solution seems to be "too easy"
(Mercurial + symbolic links), but helped us a lot and allowed to identify places, where
the system "messes itself up" and allowed to solve issues much faster. Such approach can
be  applied as well with different DVCS and also for non-Windows platforms.

I'll also mention the importance of working with users and that value of them is much more
important than technical excellence.

It hope it will be inspiring for people who have a similar challenge in front of them, but
somehow don't know how to start or don't believe such a simple thing will works.
