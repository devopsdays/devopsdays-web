+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Command line first data analysis"
Type = "talk"
Speakers = ["nicholas-canzoneri"]
+++

As an operator of a system, you will often find yourself with data in CSV or unstructured log files that contain the answer to questions you have. Which IP address is hitting my server the most? How many requests came during this time frame? What kind of queries are getting written to the slow log? You want the answers to those questions as fast as possible and either you don't have log aggregation set up or inevitably there will some data that isn't flowing into it yet. Your data is probably on a remote server that is difficult to export from or you might even have a few gigs of data on your local machine.

Command line tools can save the day! I'll present a number of methods on how to do data analysis using standard command line tools, like sort, cut, uniq, and more! These tools are great because they:
* most likely to already be installed where you need them
* very fast and can handle GBs of data
* have a lot of built in options to do a _lot_ of work for you

Command line utilities can be intimidating! But they aren't going anywhere and the best time to learn them is now. I've found practical utilities and ways to iterate quickly on the command line that allowed me to expand my skills, forge my data into shape, get the answers that I need and I want to want to show you what I've picked up.