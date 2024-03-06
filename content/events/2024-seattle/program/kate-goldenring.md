+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "A Greener, Cost-Effective Cloud with Serverless WebAssembly"
Type = "talk"
Speakers = ["kate-goldenring"]
+++

By delving into the potential of WebAssembly (Wasm) as a serverless computing unit, we discuss how Wasm addresses cold-start issues while still being highly isolated. It is a green and cross-platform solution for serverless platforms.

The software carbon intensity (SCI) of an application is the sum of its operational emissions and embodied hardware emissions. Serverless, or functions as a service (FaaS), provides a path towards reducing operational emissions by running event-driven applications only as needed. However, many serverless applications are limited by the underlying unit of compute. For example, containers provide isolation for applications in a multitenant cloud, but they take seconds to start. Similarly, MicroVMs, while more lightweight than traditional virtual machines, often require pre-warming. WebAssembly (Wasm) may solve this cold-start issue while reducing an application’s SCI. This presentation discusses why Wasm is the greenest and most cross-platform unit of compute for serverless applications. It will include a demo of how you can get started using serverless Wasm locally with Spin, an open source developer tool, and how you can run serverless Wasm applications in Kubernetes. By the end of the talk, you’ll have an understanding of the characteristics that make Wasm a cost-effective and sustainable unit for a greener cloud.