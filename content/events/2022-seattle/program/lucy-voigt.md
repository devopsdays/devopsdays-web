+++
Talk_date = "2022-07-20"
Talk_start_time = "14:50"
Talk_end_time = "15:20"
Title = "What we talk about when we talk about Feature Flagging"
Type = "talk"
Speakers = ["lucy-voigt"]
+++


When most developers think about feature flags, they think about an on/off switch to toggle a new feature, or maybe if they're fancy a percentage rollout. But feature flags can be so complex! There are so many possibilities when feature flags aren't just a way to safely roll out new software, but provide a user interface for decision points and configuration in code. At my job, I think about feature flags as long-lived dynamic configuration handlers, have used them to build a web page for a particular user using a binary tree of flags, configure rate-limiting per customer, and more.

This talk will cover:

A brief (very brief. So brief) introduction to traditional feature flags
Feature flags are embedded in code and allow developers to turn a feature on or off without changing code
They're used to safely roll out new features
How feature flags can be more than a simple on/off switch
Some particularly interesting use cases I've seen for non-traditional feature flags
The aforementioned binary tree of flags
Per-account rate limiting configuration

At the end of this talk, the audience will understand how feature flags are traditionally used, and how changing the way they think about flagging can make flags more powerful.
