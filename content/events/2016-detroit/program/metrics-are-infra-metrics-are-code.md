+++
City = "Detroit"
Year = "2016"
title = "Metrics are Infra, Metrics are Code: Yelp’s time series data at scale"
type = "talk"

+++

**Speaker**: Zach Musgrave, Yelp

It’s 2016, and “measure absolutely everything” is the new normal. Servers are
cheap, and data is abundant. Time series data drives engineering and business
decisions, and systems enabling such high-scale collection must scale along
with the rest of the organization. 

Over the years, Yelp accumulated many ways of generating metrics, monitoring,
doing analytics, and alerting. In the past year, a dedicated metrics team
formed to integrate and maintain all the tools as a platform for the wider
engineering organization - providing monitoring as a service. To achieve this,
principles from the Infrastructure as Code movement become essential: ephemeral
servers managed within version control, distributed configuration management
via CI/CD pipelines, and aggressive containerization of federated resources via
PaaS techniques.

Join us to hear about auto-scaling stateful aggregation systems that don’t want
to auto-scale. Listen in for tools that work across vendors, libraries
supporting in-house innovation, and a strong push toward self-service metrics
for all our internal users. Check out Yelp’s approaches to redundant alerting,
    cheap yet resilient storage, and expressive client libraries that actually
    don’t suck.

“Who monitors the monitors?” We do.

#### Speaker bio ####

Zach Musgrave is the Tech Lead for Yelp’s Metrics team, which provides the
instrumentation, monitoring, and alerting platforms for Yelp’s Engineering and
Operations teams. From graduate school onwards, Zach has worked in performance
optimization: from individual systems and code paths to cluster wide service
performance for thousands of machines. At Yelp, he’s also worked on large scale
deployment infrastructure, Hadoop operations, and key management. Back in the
day, Zach was an English major.


