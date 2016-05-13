+++
date = "2016-03-06T21:28:07-06:00"
title = "Justin Cormack"
type = "talk"

+++

## Let's talk about Security

Having a conversation about security between developers, security professionals and ops requires a common language, and tools that respect that language.

In this talk I discuss a conversational approach to defense, in depth approaches to application security, going from a high level language about what a program is intended to do, and applying this to tools that restrict behaviours.

Appropriate language depends on the problem domain, so I will look at concrete examples. The first case is the OpenBSD pledge system, introduced last year. This has been the most successful rollout of a capability reduction system, with it applied to the majority of the programs in the base system within a few months. It is however successful because it targets the language of a particular problem domain, and is not necessarily directly applicable elsewhere.

As a second example I will look at the ongoing work we are doing at Docker to apply the pledge model to make a language for describing containerised applications, looking at the differences in the domain languages for a different type of application.

[Slides](https://github.com/kramos/devopsdays-webby/blob/master/site/content/events/2016-london/program/slides/DevOpsDaysLondon_LetstalkaboutSecurity.pdf)


<iframe src="https://player.vimeo.com/video/165184759" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<p><a href="https://vimeo.com/165184759">Let&#039;s talk about security by Justin Cormack</a> from <a href="https://vimeo.com/devopsdaysldn16">DevOpsDays London 2016</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
