+++
Talk_date = "2020-04-15"
Talk_start_time = "16:20"
Talk_end_time = "16:50"
Title = "Inheriting legacy outsourced code"
Type = "talk"
Speakers = ["maarika-krumhansl"]
+++

Powell's Books in Portland Oregon is the country's largest independent bookseller and has a loyal following of local, national and international customers. While Powell's has a shoppable Ecommerce site, we are like many retail companies of a similar size in that we have struggled to implement a modernized Ecommerce solution that meets the changing customer needs. For over 10 years, the development of core business technologies was outsourced, with less-than-ideal outcomes. As a result, within the last year Powell's leadership has decided to make a major strategic investment in technology, and has hired developers into the IT department to own and develop Powell's technology products. As DevOps Manager, I was one of the first of these new hires, and was tasked with making sense of the legacy (.NET) code base and on-prem (Windows-based) infrastructure we inherited from the outsource team. I'll be honest: it was overwhelming. The source code didn't compile. The application architecture was not understood. There were absolutely no automated tests. But slowly over the past 6 months we've made some headway and I want to offer some lessons learned.

Firstly: Leadership must have realistic expectations, and the timeline must reflect that. We've been fortunate to have a CIO who deeply understands the technical challenges we're facing and who is able to translate that to the rest of the leadership team.
Secondly: Document, document, document. Draw diagrams. Publish meeting minutes. Documenting helps with knowledge-transfer as well as transparency, and creates a culture of sharing.
Thirdly: If you come from a Linux background (like me) and you're looking to DevOps some Windows, be prepared for a steep learning curve (e.g. "Wait I can't just SSH?").
Finally: Building and deploying a legacy application from scratch (into, say a QA envt) is the best way to understand how each component fits into the whole. And if you're going to be building an envt from scratch, might as well do it in the cloud, and with Terraform...

Powell's IT is still very much in the midst of its DevOps transformation, but I know that we have the right people and ingredients in place to make a huge impact at a truly unique - and beloved - company.
