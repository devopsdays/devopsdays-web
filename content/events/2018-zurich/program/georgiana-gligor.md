+++
City = "Zurich"
Year = "2018"
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Silo-Based Architectures for High Availability Applications"
type = "talk"
speakers = ["georgiana-gligor"]
youtube = ""
vimeo = "272535482"
speakerdeck = "https://speakerdeck.com/dodzh/silo-based-architectures-for-high-availability-applications-georgiana-gligor"
slideshare = ""
slides = ""
+++

High availability is becoming a de-facto requirement of today's applications.
Customer-facing IT failures mean directly losing customer revenue and trust, as users have
grown accustomed to easily switching service providers for more reliable ones. Lack of
internal systems availability block employee productivity and add to the financial burden.
Thus, it is critical to have a healthy, performant, resilient IT structure serving as a
backbone of conducting your business. But there are no textbook solutions to achieving
five 9s availability. Data redundancy, computing clusters, load balancing, fail-over
mechanisms, each of these individually addresses one potential issue, but none treats
systems in your organisation holistically for maximising business revenue. Silos are a
clever method of grouping servers in such a way that they can be scaled both horizontally
and vertically, depending on the actual application needs. Most importantly, it frees you
from over-optimizing the architecture upfront, by allowing fine adjustments easy to
integrate in your Agile workflow.

The talk introduces an architectural pattern that allows for a true A/B testing of
infrastructure in a production environment, with a low cost of failure associated to it.
Additionally, it promotes horizontal scaling of groups of machines that deliver the
end-to-end user experience in a given business scenario, to meet spike demands on a
budget. This approach stemmed from a real-life scenario, where our customer, a large US
airline, needed tools to cope with Black Friday/Cyber Monday traffic, while meeting very
strict IT policies and procedures.
