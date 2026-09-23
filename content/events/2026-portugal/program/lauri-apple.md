+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "If This Code Could Talk: Runtime Conditions for Platform Automation"
Type = "talk"
Speakers = ["colin-lacy", "lauri-apple"]
+++

App developers want to write code, not YAML. And yet the step between “this application needs these integrations” and “the platform can safely deploy this application” remains mostly manual, fragmented and complicated. It’s no picnic for platform devs, either: The process of configuring database permissions, adjusting network policies, and fulfilling other tasks can lead to misalignment, coordination overhead, and details slipping through the cracks.

This talk showcases the Runtime Conditions Profile Specification, which aims to close the communication gap between apps and platforms through code and automation. We’ll describe how the spec creates a common language for developer-platform interoperability—generating a declarative profile from application source that turns runtime integration requirements into platform action. You’ll see how profiles, extensions, and adapters drive provisioning, configuration wiring, network policy, Kubernetes deployment, and release-blocking feedback when integrations break. We’ll also cover automation that integrates with existing platform tools like Kratix and Crossplane to further simplify the workflow for app and platform devs alike.

By the end, attendees will have a way to describe application integrations across app devs, platform engineers, and tooling so that you spend more time shipping and less time configuring.
