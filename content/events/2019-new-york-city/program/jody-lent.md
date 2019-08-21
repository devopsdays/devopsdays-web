+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Prioritizing Explosions"
Type = "talk"
Speakers = ["jody-lent"]
+++

How do I prioritize spending limited cycles on unlimited potential problems?

Failure Mode and Effects Analysis (FMEA) is a technique stolen from “real world” reliability engineering that allows us to create objectivity within a subjective domain.

By brainstorming a list of all the failure modes of a system and then subjectively ranking and quantifying them, we can generate a relative priority for each case, allowing for clear agreement between teams on which cases (if any) warrant action or automation.

A roadmap and example walkthru of the process will include factors such as

-   Severity: How much $ or reputation do we lose?
    +   (e.g., airlines and music companies can both use the process, even though the human consequences of an outage can be vastly different)
    +   One goes down and we can’t listen to music; the other goes down and we die, but BOTH have to decide how to prioritize their limited resources
-   Occurrence:
    +   Burrs in deployment cause a great deal more friction at 100/wk than 1/mo – at $COMPANY test failures inside a single giant deploy script were painful, but QUANTIFYING them drove $COMPANY to actually implement a pipeline solution
-   Detection: How hard is ${this failure case} to catch?
    +   Misconfigurations occur with varying frequency, but when they only become apparent $NEXT_RELEASE, they were MUCH harder to catch
    +   It’s very easy to say “we can monitor that”–but the question is “What if it happened RIGHT NOW?”
-   Prioritization: Actually doing the math

SO WHAT DOES ANY OF THAT BUY US?

Quantifying things lets us set “objective” thresholds for where and when we need metrics, monitoring and automation – and just as important, it lets us PRIORITIZE those action items in a way that keeps both mgmt and engineering happy, on the same page, and focused on the money we’re making (or at least, not losing).
