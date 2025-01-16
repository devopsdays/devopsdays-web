+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Shadow Vulnerabilities in AI/ML Data Stacks - What You Don’t Know CAN Hurt You"
Type = "talk"
Speakers = ["mic-mccully"]
sharing_image = "mic-mccully.png"
+++

The adoption of open-source AI software introduces a new family of vulnerabilities to organizations. Some components in AI, like model serving, include Remote Code Execution (RCE) by design, like when loading pre-trained models from external sources.

Traditional SCA and SAST approaches are not built for the AI ecosystem leaving a huge & insecure attack surface. The irony is that in the AI ecosystem, security issues such as remote code execution are actually a feature and not a bug, often specified explicitly in the docs, which most devs don’t read.

AI models are often downloaded from the public web, from untrusted sources in common platforms like HuggingFace using the “trust_remote_code=True” flag when loading models.  So how do we better secure our AI stacks?

In this talk, we’ll examine some of the common security anti-patterns prevalent in AI engineering, such as security issues that are not classified as CVEs by design, or patched security issues that introduce breaking changes and therefore are not practically implemented.

We’ll review the methods introduced for better security hygiene such as new checkpoint formats (model files on disk) - like SavedModel and SafeTensors. While SCA, SAST, and traditional approaches don't analyze model checkpoints, leaving these silent vulnerabilities in your stacks, we’ll demo through real code examples, why the runtime context is crucial to detect these security issues––and how this can be achieved by leveraging eBPF and open source tooling providing real-time security context to improve the security of your AI applications.
