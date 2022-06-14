+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Alerts Don't Suck. YOUR Alerts Suck."
Type = "talk"
Speakers = ["leon-adato"]
+++

The SRE handbook defines alerts as "A notification intended to be read by a human and that is pushed to a system such as a bug or ticket queue, an email alias, or a pager. Respectively, these alerts are classified as tickets, email alerts, and pages." and I just want to scream. Not because the definition is wrong, but because it's not enough.

First off, if you go from that definition, many devs think (and rightly so) "Why bother?". Who wants an unscheduled interruption when there's no intrinsic value. Because, you might notice, the value of the alert is completely missing.

Second, and conversely, many practitioner see alerting is seen as the entire reason for monitoring and observability. If you can’t get an alert when something is going wrong, why bother monitoring at all?

But those of us who revel in the I.T. sub-discipline of monitoring and observability know that alerts are only one piece of the puzzle. Drawing on decades of experience designing, building, implementing, and supporting solutions from a range of vendors in a variety of settings, I'll expose the places where alerting often goes wrong, how to avoid common pitfalls, and how to dig yourself out if you're already neck-deep.
