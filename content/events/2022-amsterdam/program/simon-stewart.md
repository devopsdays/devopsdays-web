+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "You're Going to Build What?"
Type = "talk"
Speakers = ["simon-stewart"]
+++
The best way to make your CI builds fast is to not build anything. The second best way is to build the bare minimum amount of code, and run the fewest possible tests. But how can you do this? Rough heuristics will lead to errors. Over-building leads to slow builds. It's a seemingly intractable problem.

In this talk, we'll explore how we can use Bazel to discover the ideal subset of things to build and tests to run, and how you can use this knowledge to get blinding fast CI runs for any project that uses it.
