+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Enhanced Media Metrics"
Type = "talk"
speakerdeck = "https://speakerdeck.com/shanetuohy/enhanced-media-metrics"
Speakers = ["shane-tuohy"]
+++

<p>Within a cloud system, components generate many discrete metrics, which all may relate to a single event, call, or incident. A single event or sequence of events is not always sufficient.</p>

<p>In a cloud based voice and video platform, network loss, jitter and delay negatively impact the customer experience, so measurements at multiple points in the path are required. Data needs to be collected and combined, and potentially enriched with customer and path data to allow aggregation of measurements from several different sources into useful human interpretable statistics.</p>

<p>To address this, we developed a cloudfoundry microservice to periodically query events from different sources and combine them into more useful, friendly metrics. We did this with a plugin architecture that allows us to quickly add new queries. In this talk, you will learn the details of the architecture and see how we have used the enhanced metrics to drive media quality improvements.</p>
