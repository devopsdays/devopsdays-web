+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Where’s the Auto in Auto-Instrumentation? A look at current automation strategies with OTel"
Type = "talk"
Speakers = ["josh-lee"]
+++

“Automatic Instrumentation” can mean a lot of things depending on context. Whether we’re discussing the Instrumentation SDKs or full-kernel observability with eBPF, the promise is the same: end-to-end observability coverage with no custom code and minimal setup.

First, I will review how the different mechanisms available for automatic instrumentation work within each of the 11 languages supported by OpenTelemetry. I’ll examine:

- how code-path instrumentation works at the library level by diving into the PHP OpenTelemetry Extension and the PHP libraries it supports
- automatic instrumentation via attachment with Java and Python
- automatic instrumentation injection using the OTel Operator for DotNet, Java, and NodeJS

Finally, I’ll take a peek at the future of automatic instrumentation of compiled binaries with a look at the Go instrumentation library built using eBPF.

In this talk will attempt to clarify the different mechanisms that are often colloquially lumped under the term “Auto-Instrumentation” and help to clarify for end users exactly what is possible within each supported language. I will answer questions that I hear often about instrumentation such as “will I need to modify my application code?”, “will it work without Kubernetes?”, “Will I be able to use the libraries I’m currently using?”, and “how can I use this in a completely custom code base?”