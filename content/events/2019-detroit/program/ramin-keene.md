+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Production as an Experiment Lab"
Type = "talk"
Speakers = ["ramin-keene"]
+++
How do we progress from testing in prod to experimentation in prod?

Progressive delivery is a transformative cultural shift that holds great appeal to the enterprise, for whom any notion of continuous implied a loss of control that was far too scary. Yet, testing in prod, be it via feature flags, chaos engineering, or canary rollouts, makes assumptions that would invalidate any field experiment:

    1 - That any team forming a hypothesis for a test possesses a sophisticated amount of knowledge and control over their systems, ie: what they are, and how they run, how to change them, and how they might break.
   2 -  That any existing knowledge the team possesses of the system is free from bias, contamination, or tampering with experiment behavior.

So we ask, what might testing, and thus experimenting, in prod look like for a team that has inherited a production system that no one has ever worked on or seen before?

In this talk, we’ll explore how to bring techniques from the world of data science, personalization, and field experimentation into the world of distributed systems, using a mix of distributed trace data, metrics, fault injection, and multivariate a/b testing as a foundation for ongoing analysis, discovery, and proactive experimentation with how systems bend, twist, and ultimately break, safely.

You’ll learn modern techniques being adopted by cutting edge organizations to support teams shipping changes safely at speed, as well as here of some wildly experimental delivery techniques that your boss will NEVER go for (at least for a few more years). You’ll leave understanding how adopting safety as a primary concern over caution and correctness can lead to safer, more reliable software, and ultimately, happy users and operators on call!
Notes

I would expect that this talk would only go down well with an audience that is already onboard with “testing in prod” and progressive delivery as an emergent trend and is either already using feature flags, exploring chaos engineering, or considering some form of “testing in prod” as being something they want to introduce to their organization.

I personally feel well credentialed to give this talk as a software engineer who was accidentally sucked into the world of data science as “the idiot” in the room full of PHDs, but was lucky enough to survive and have my eyes opened to the world of field experimentation and advanced a/b testing. Having implemented numerous systems as scale supporting experimentation and a/b testing for large retail companies and in support of personalization projects, i have spent much of the last year, and continue to spend my time, building tooling to support operators and builders of production systems to bring the same rigor around deterministic testing and valid experimentation to managing software and systems post release and see this as the next frontier of exciting work in the software industry (i’m sold on progressive delivery, i think so much is to come in this space and i’d love to (hopefully) participate in this conf, sharing my excitement and ideas with others who are also thinking this way)
