+++
Talk_date = "2024-09-23"
Talk_start_time = "10:10"
Talk_end_time = "10:40"
Title = "Swiss knife for Go debugging with VSCode"
Type = "talk"
Speakers = ["ivan-pesenti"]
+++

One of the most important things when we’re writing code is the ability to debug it. Many IDEs have an integrated debugger that can smoothen our coding experience. The debugger for the Go source code is called Delve. It’s tightly integrated with VSCode and the Go extension. As you might know, the debugger allows us to step through our code, focus on specific sections that may deserve more attention, inspect variables’ values, stack traces, etc. Sometimes, debugging turns into a hassle. The process supposed to help us becomes an insurmountable obstacle. Sometimes, we abandon the debugging or log directly into the code. Both of the options end up decreasing our productivity as developers.

Thus, this talk aims to provide a working solution to debug Go code in VSCode. I chose this IDE since it’s free, highly customizable, performant, and my favorite! Since we can build different projects, I try to provide you with a working solution for each. The scenarios you’re likely to face are (list not exhaustive):

- Debug unit tests
- Debug integration tests
- Debug a package
- Attach to an already running process (both locally and remotely)
- Debug multiple microservices with the compound configuration

To overcome these challenges, you’re requested to tweak settings in the launch.json file within the hidden .vscode folder. In this file are listed what are known as profiles. These are selectable in the “Run View” area. Within this file, we have the option to set different values, such as:

- environment variables or env file
- whether to show global variables’ values
- which console to use
- and many others

Throughout this talk, I share hints on Delve and how to make the most of it. I also touch on some overlooked aspects of VSCode that can make a huge difference in your debugging experience. Finally, I’ll give you some mind-blowing tips and tricks on debugging. If you’d like to improve your debugging skills, please don’t miss my session!
