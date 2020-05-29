+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Calling Out A Terrible On-Call System"
Type = "talk"
Speakers = ["molly-struve"]
+++
Scaling an on-call rotation as your dev team grows can be a challenge; this talk will cover how my company took a dying on-call approach and revamped it to make it enjoyable for everyone.

Back when our team was small, all the devs participated in a single on-call rotation. As our team started to grow, that single rotation became problematic. Eventually, the team was so big that people were going on-call every 2-3 months. This may seem like a dream come true, but in reality, it was far from it. Because shifts were so infrequent, devs did not get the on-call experience they needed to know how to handle on-call issues confidently. Morale began to suffer and on-call became something everyone dreaded.

We knew the system had to change if we wanted to continue growing and not lose our developer talent, but the question was how? Despite all of the developers working across a single application with no clearly defined lines of ownership, we devised a plan that broke our single rotation into 3 separate rotations. This allowed teams to take on-call ownership over smaller pieces of the application while still working across all of it. These individual rotations paid off in many different ways.

With a new sense of on-call ownership, the dev teams began improving alerting and monitoring for their respective systems. The improved alerting led to faster incident response because the monitoring was better and each team was more focused on a smaller piece of the system. In addition, having 3 devs on-call at once means no one ever feels alone because there are always 2 other people who are on-call with you. Finally, cross-team communication and awareness also drastically improved with the new system.
