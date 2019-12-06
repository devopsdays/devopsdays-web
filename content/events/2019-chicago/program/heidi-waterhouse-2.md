+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "All The World’s A Staging Server"
Type = "talk"
Speakers = ["heidi-waterhouse"]
googleslides = "13glzciQLT_9sU0n0uhpYsEdnGwm34MscSWnyze7iBNA"
youtube = "V1APcbXXJNY"
+++

I have sad news - staging is a lie and will never be identical to production, because production is unknowable. Trying to replicate it is often prohibitively expensive.

But I also have good news - production can contain multitudes, including features you aren’t ready to turn on or activate yet. You can hide in the dark and do integration testing at the same time.

It's simplistic to say that you should just kill the idea of a staging server and do everything in production. There are obviously problems with that - you need to do unit testing, you need to avoid things that will take down a service, you may need to do essential cutovers. But it's worth examining what benefit you're getting from staging and whether you could re-allocate that effort.

Join me for an exploration of the ways that you might be able to kill staging and perform better.

- What is the actual value of a staging environment?
- What are some questions to ask about why we have staging?
- How can I re-engineer releases to save costs?
