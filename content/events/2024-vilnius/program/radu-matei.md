+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Add WebAssembly workloads in Kubernetes with SpinKube"
Type = "talk"
Speakers = ["radu-matei"]
+++
At Kubecon Paris recently, WebAssembly was one of the most talked about technologies and rightfully so. With the release of WASI Preview 2, it seems like Wasm is the poised to be next gamechanger in the cloud computing space. One of the big announcements at Kubecon was the new CNCF sandbox project SpinKube which enables hyper efficient serverless on K8s, powered by Wasm.

SpinKube is an OS project that streamlines developing, deploying and operating Wasm workloads in K8s - resulting in delivering smaller, more portable applications and compute performance benefits. This talk is a technical overview of SpinKube and how it works under the hood. There are descriptions of the containerd shim that enables the Wasm runtime, how Runtime Class Manager deploys pre-configured images that run Wasm workloads, the Spin Operator which is used to schedule and manage Spin Wasm apps and how it all comes together. This talk also gives an introduction to how WebAssembly works - with a live demo attached