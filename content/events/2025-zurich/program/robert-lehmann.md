+++
City = "Zurich"
Year = "2025"
talk_date = "2025-03-12"
talk_start_time = "12:00"
talk_end_time = "12:30"
title = "Planet-Scale Dashboards"
type = "talk"
speakers = ["robert-lehmann"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

### Talk

Google runs hundreds of thousands of services globally, often interdependent and with shared concerns. At that scale, classical Federated Observability — a platform team providing foundations and/or building blocks for each team to assemble on their own — does not scale anymore.

In this talk, we will demonstrate how Google managed to cut toil dramatically while providing best-in-class monitoring out-of-the-box:

- What are the unique circumstances that contributed to Google’s scaling problem?
- A data model for re-usable dashboards
- Impact on both configuration overhead and incident response
- Looking beyond dashboards, how such re-use can be facilitated in the broader observability space

Robert will draw on Google’s research paper on Planet-Scale Dashboards (to be published mid 2025) and more than a decade of experience in SRE.