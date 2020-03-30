+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Making your tools work for you"
Type = "talk"
Speakers = ["eimhear-obrien"]
+++

Out of the box code scanning tools are not being used to best advantage and aren’t always fit for purpose. The integrated tools don’t scan SQL code and the standalone scanner takes too long, throws up too many code violations and re-scans files that have already been scanned. As a result, code quality wasn’t measurable and developers couldn’t tell if their changes made the code worse.
Empathy: We pushed for a set of rules because it’s not reasonable to review code created by a hundred hands without a clear set of expectations on the developer and reviewer.

Lead from where you are: By putting together a working group, you can facilitate a way to distill a lot of tacit knowledge and you don’t have to be a technical lead or manager to do this.

Sometimes it’s not impossible just because support says they can’t help. If the documentation is incomplete, and you can access the source code you can use that to understand the tool.

We now have this tool scanning SQL using a set of rules agreed by our working group of experts. It took a few iterations to get the rules working since it was a total trial and error methodology. Building good working relationships is as much a part of getting a project completed as having the technical expertise, I should know, I’m a graduate but with the help of experts and colleagues I was able to implement a set of rules for SQL including writing new rules and ensuring code scanning for all code was part of builds and pull requests.
