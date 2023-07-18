+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Alert Analytics"
Type = "talk"
Speakers = ["monika-singh"]
+++
At Cloudflare, we use Prometheus heavily. We have point of presence (POP) in more than 285+ number of cities and each POP have their own Prometheis. All these Prometheis send alerts to a central Alertmanager. We have various integrations to route the alerts. We also route all the alerts to a datastore for alert analytics.
