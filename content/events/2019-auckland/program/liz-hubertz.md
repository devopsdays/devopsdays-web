+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "FontOps: Serverless Architecture & the Future of Font Processing"
Type = "talk"
Speakers = ["liz-hubertz"]

+++

How does a font file go from a designer’s laptop to being used in the wild on the web, in applications like Photoshop, and on a user’s laptop? This process requires an entire team of designers, font experts, and you guessed it - devops people!

This year, the Adobe Fonts team embarked on a project to modernize our font processing pipeline: The way a font gets validated for quality before it can be used in the wild. To build this system, we had to work with some interesting constraints:

* Individual validators may be integrated from anywhere, by any developer, at any time. They might even be open source software, or pieces of software submitted by teams outside of Adobe.
* We need to minimize dependencies and domain-specific knowledge, since not all font experts are also devops experts
* We need an easy way to track, within an individual font asset, which overall version of the pipeline was used for processing, as well as the version of each component that was used within that pipeline

In the end, we decided on an interconnected system of lambdas, stitched together using an AWS step function with deployment automated through a series of Jenkins pipelines. The result was a pretty cool, easy-to-use system that processes at 1K (Fonts Per Minute!)