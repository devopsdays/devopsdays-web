+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "THE STATE OF OPENTELEMETRY"
Type = "talk"
Speakers = ["dotan-horovits"]
+++

Everyone wants observability into their system, but find themselves with too many vendors and tools, each with its own API, SDK, agent and collectors.

In this talk I will present OpenTelemetry, an ambitious open source project with the promise of a unified framework for collecting observability data. With OpenTelemetry you could instrument your application in a vendor-agnostic way, and then analyze the telemetry data in your backend tool of choice, whether Prometheus, Jaeger, Zipkin, or others.

I will cover the current state of the various projects of OpenTelemetry (across programming languages, exporters, receivers, protocols), some of which not even GA yet, and provide useful guidance on how to get started with it.