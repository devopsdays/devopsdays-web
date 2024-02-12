+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "When JWT becomes a security problem for your services"
Type = "talk"
Speakers = ["christian-posta"]
+++

If you’ve used JWTs for user authentication, you might have thought, “It might be a good idea to use JWTs for service to service (S2S) authentication”, only to discover how complex the JWTs for S2S in dynamic environments can get. 

Drawing on insights from working with large customers, we'll show the pitfalls of forcing S2S traffic through traditional API gateways (aka “hair pinning”) - a process that increases latency and decreases efficiency. 

We'll highlight the security risks when bypassing API gateways for direct service calls and relying on JWTs. As enticing as it seems, this method often leads to code duplication and puts most of the burden on developers who must maintain them.

We propose a pivot to service mesh and mTLS. The approach simplifies S2S authentication, automates security best practices, and mitigates the downsides of JWTs. We'll delve into how service meshes use mTLS to manage traffic encryption, validate tokens effectively, and ensure seamless key rotation, offering a more robust security framework for S2S communication.
