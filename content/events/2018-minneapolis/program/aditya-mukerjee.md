+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Unifying Your Observability Pipeline"
Type = "talk"
Speakers = ["aditya-mukerjee"]
speakerdeck = "https://speakerdeck.com/chimeracoder/unifying-your-observability-pipeline"
youtube = "nEWPnqx7Qxw"
+++

“If a microservice falls down in the middle of a server farm, does my pager make a sound?”

If your service is automatically monitored, then the answer is “yes!”. But now that you’ve been paged and roused from your slumber… what happens next? Do you stumble to your computer, bleary-eyed, trying to find the elusive problem by cross-referencing dashboards and server logs across eleven different browser tabs? Or do you have better tools that you can use to integrate your monitoring data?

Unless you’re an engineer at a massive company like Google, the answer is probably “no” - most companies don’t have the resources to build all their own monitoring tools in-house. When using third-party and open-source tools for monitoring, there will always be gaps in between.

Fortunately, there’s a way teams can get the best of both worlds: high-resolution visibility into your systems, but without having to write your entire monitoring stack yourselves. We built a custom-built, open-source distributed tracing and monitoring pipeline that allows us to inspect each step of an HTTP request and diagnose the root causes of errors, leveraging the same open-source and third-party monitoring platforms you’re already used to. And with a monitoring pipeline that unifies metrics, logs, and traces, you can live the observability dream: the right data, in the right form, right when you need it.
