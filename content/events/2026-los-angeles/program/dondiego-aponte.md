+++
Talk_date = "2026-03-06"
Talk_start_time = "13:30"
Talk_end_time = "13:45"
Title = "Barns Don't Burn Down Because of One Loose Nail, But Yours Just Might"
Type = "talk"
Speakers = ["dondiego-aponte"]
+++

Kubernetes is exceptionally good at keeping things running—and sometimes a little too good at hiding when they're not. Pods restart, nodes reschedule, alerts auto-resolve, and dashboards stay green long after the system has started misbehaving.

In this 10-minute talk, we'll walk through examples of Kubernetes failure patterns where missing observability signals and incomplete instrumentation allow small problems to quietly pile up until they become a production outage. We'll show how infrastructure-heavy dashboards—and "AIOps" systems confidently declaring "this is fine"—create blind spots that delay human intervention.

Using OpenTelemetry as a practical example, we'll dig into how to instrument for behavior instead of resources, correlate metrics, logs, and traces by default, and surface early warning signs before users feel the impact.

Because barns don't burn down because of one loose nail—but modern production systems absolutely can.

<style>
  p {
    text-align: justify;
  }
</style>