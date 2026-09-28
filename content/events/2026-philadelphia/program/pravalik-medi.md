+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "We Cut Our AWS SQL Server Bill by a Third. Here's What Actually Moved the Number"
Type = "talk"
Speakers = ["pravalik-medi"]
+++

We run SQL Server across RDS and EC2, and the bill was growing faster than the workload was. We took about a third off it. Nothing got rewritten, and no application team had to change how they worked.

This is a walkthrough of where the money actually was, ranked by what each change returned. Some of it was obvious in hindsight. One of the larger items we found by accident while looking for something else.

I'll also cover what looked like savings in a spreadsheet and wasn't, including the changes we tried and rolled back. And how we decided what was safe to shrink on a production database, where the cost of guessing wrong is an outage during dinner rush.

You should leave with a way to rank cost levers against risk on your own estate, instead of working down whatever list the cost console puts in front of you.