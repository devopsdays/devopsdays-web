+++
City = "Zurich"
Year = "2017"
date = "2017-02-27T15:13:14+01:00"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Massively Distributed Backups at Facebook Scale"
type = "talk"
speakers = ["dan-reif"]
youtube = ""
vimeo = ""
speakerdeck = "https://speakerdeck.com/dodzh/d2-i4-dan-reif-massively-distributed-backups-at-facebook-scale"
slideshare = ""
slides = "https://speakerdeck.com/dodzh/d2-i4-dan-reif-massively-distributed-backups-at-facebook-scale"
+++

MySQL is at the core of Facebook's persistent storage. The graph itself, including every 
like, comment, post and status, is stored in MySQL, along with many other things. This 
data is the company's most important asset, and we take great care to make sure everything 
is properly backed up. Yes, even the lolcats and puppy picture posts. Everything!

As you can imagine, backing up this behemoth of a dataset is quite a challenge. The backup 
system Facebook runs for MySQL is multi-tiered and massively distributed. We employ binary 
log, full, and differential backups and clever hacks to balance speed, space and reliability.

In this talk you'll learn how we backup Facebook, every single day. We'll go over the 
design, engineering and operational challenges we've had to overcome, and wrap up with 
some fun war stories.

DevOps Relevance: At the core of DevOps is monitoring and orchestration. The talk is not 
built as a polished set-piece, but instead as a series of improvements (and snags we hit 
along the way).  The overall theme is one of managing complexity via code rather than with 
more humans.
