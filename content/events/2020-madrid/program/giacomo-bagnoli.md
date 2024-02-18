+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Lessons learned from monitoring a large production network"
Type = "talk"
Speakers = ["giacomo-bagnoli"]
+++

At Facebook, we have a large internal network spawning multiple datacenters, over multiple geographic regions across multiple continents. This means a large number of devices and links to monitor. We have been developing a bunch of different strategies to make sure our network is healthy, from SNMP counters collection to sophisticated synthetic traffic injection tools. The aim of this talk is to review how we approached the problem over the years, how we dealt with common problems in the monitoring space but, most importantly, what we learned while doing so, and how we applied those concepts to other problems.