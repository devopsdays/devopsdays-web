+++ 
Talk_date = "" 
Talk_start_time = "" 
Talk_end_time = "" 
Title = "Alerts Don't Suck. YOUR Alerts Suck!" 
Type = "talk" 
Speakers = ["leon-adato"] 
+++

The SRE handbook defines alerts as "*A notification intended to be read by a human and that is pushed to a system such as a bug or ticket queue, an email alias, or a pager. Respectively, these alerts are classified as tickets, email alerts, and pages.*" and I just want to scream.
Not because the definition is wrong, but because it's not enough.First, that definition causes devs to (reasonably) think "Why bother?" After all, who wants an unscheduled interruption with no intrinsic value? 
Because - and this is the key point - the SRE handbook fails to communicate *the value* of an alert. Second, and conversely, many practitioners think alerting is the raison d'etre for monitoring and observability. 
In this view, why bother monitoring if there won't be an alert? But the truth is alerts are only one piece of the puzzle. Drawing on decades of experience designing, building, implementing, and supporting solutions from a range of vendors in a variety of settings, 
I'll expose the places where alerting often goes wrong, how to avoid common pitfalls, how to create truly stunning and useful alerts, and how to dig yourself out if you're already neck-deep.
