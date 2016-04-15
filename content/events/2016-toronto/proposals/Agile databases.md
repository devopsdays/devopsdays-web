+++
City = "Toronto"
Year = "2016"
date = "2016-03-06T21:28:07-06:00"
type = "event"
title = "Jeff Zohrab"

+++

### Agile Databases

**Abstract:**

Databases are almost always a pain point for development, especially when it comes to agile. In this talk, I'll discuss what I feel are the main points that need to be considered for successful database development:

+ each dev should have their own development database, and should create database change scripts
+ changes should be easily integrated
+ baselining
+ the difference between reference and test data
+ handling schema vs code changes
+ testing
+ backwards compatibility checks
+ database refactoring

For lack of a better tool (at least, at the time!), I wrote a cross-platform database development tool in Python that can/should be able to work with any database for which suitable drivers exist, and implementations are available for MySQL and Postgres. I'll use that as a demo. With this tool (version 0.1 of it, anyway), I had a team of 6 devs destroying and rebuilding their dev databases as needed with a single click, running their dev tests on their dedicated instances, and deploying to multiple QA and integration environments.

I think that this topic is interesting in general as it highlights the need to pull pain points forward and deal with them. Paraphrasing Jez Humble -- or maybe exactly quoting him per <a href="http://evan.bottch.com/2010/05/26/continuous-integration-if-something-hurts-do-it-more-often/" target="_blank">Continuous Integration – If Something Hurts, Do It More Often</a> -- database things hurt, and so they need to be done as much as possible. Unfortunately, many tools don't address these needs, and advice on the net can end up being problematic (eg the tip "your db change script should check if a column exists before adding it" can end up avoiding one trouble but causing another).

**Speaker:**

Jeff Zohrab

I've been in tech for a few decades now, and was an early adopter with XP designed testing frameworks for VB and C++. I've worked on small, big, and huge projects on the development side as dev, team lead, and architect, and have recently started working with a Japanese company to instill DevOps practices into their culture.