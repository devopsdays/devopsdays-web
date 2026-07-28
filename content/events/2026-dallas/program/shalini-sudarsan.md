+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Launch Sold Out and Our Login Page Fell Over: Surviving a Million Users in 60 Seconds"
Type = "talk"
Speakers = ["shalini-sudarsan"]
+++

At 6:59 AM our traffic jumped from around 100k to 300k users. One minute later, at 7:00 AM, it was close to a million. This was a planned product drop tied to a marketing campaign. We knew the date. We knew the exact minute. And we still got caught. Logins hung. Checkout timed out. By the one metric leadership cared about, the launch was a huge win, because the product sold out. But thousands of customers hit a broken site at the precise moment we had spent a marketing budget convincing them to show up.

That gap between "the business won" and "the customer suffered" is what this talk is about. Our autoscaling did exactly what we had configured it to do. It just did it too late, because demand didn't ramp. It cliffed. I want to make the case that reactive autoscaling is structurally late for high-heat events, and not because you tuned it wrong. The problem is that "scale triggered" is only the very start of a long journey to capacity that can actually serve a request. There's boot time, health checks, cache warmup, and dependency saturation. By the time the safety net catches you, the customer has already fallen.

I will walk through what we changed. We started scaling before the event on a schedule we already knew, and then we added the part most teams skip, which is verifying readiness before customers arrive instead of assuming that "scaled" means "ready." I'll share the drift rule that now escalates us early when peak is close and healthy capacity is running short. I'll also be honest about the organizational fight that came with all of this, which was convincing a business to pay for capacity before a single user exists.

I will close with a claim that I hope gets argued about in the open space. For predictable, event-driven spikes, "we have autoscaling" is a false sense of safety, and the ability to prove readiness in advance is about to separate the teams that look reliable from the teams that actually are.
