+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "DevOps as a Contract"
Type = "talk"
Speakers = ["subhas-dandapani"]
+++

In a tool-heavy infrastructure world, this talk explains  how to rethink DevOps as being a Contract first, instead of focusing on tools or teams or roles.We will cover 5 different infrastructure areas, how each of them were treated before as a tool, what bottlenecks they faced, how they were remodeled to a being a contract, and how the whole area scaled up.  Every organization that wants to scale their Infrastructure up will highly relate to the problems and solutions outlined in these examples.

* Logging: 
  * Before: Logstash as a tool.  Hundreds of custom logstash transformations, pipelines, ports and snowflake configs for  different fields for each service. Custom optimizations and weekly hacks. Slow, ticketed bootstrap process for new services.  
  * Rethink: STDOUT as a contract. Any line having JSON is treated as a structured log. Metadata automatically added. Application teams respect their side of the contract. DevOps works on the implementation side. Both are decoupled and evolve independent of each other. Tool becomes secondary.  
  * After: Scaled up from 50GB to 2TB per day of structured logs. Since the contract implementor knew exactly what they were dealing with, they added all other intelligence around the contract (throttling, retention, automatic field types based on suffixes, etc) 
* CI/CD:
  * Before: Jenkins as a tool. Hundreds of snowflake jobs and multi-jobs clicked and configured. Dozens of plugins. CI as a kitchen sink. Infra team owns certain parts of config.  Application team owns certain parts of config.  Nobody knew why anyone clicked anything 3 months back. Every CI upgrade was painful with broken jobs. Huge time to bootstrap new services, runners for those services, etc.  
  * Rethink: CI as a contract. Adopt gitlab ci.yaml as the interface. Implement gitlab ci.yaml on Jenkins (Tool is secondary, it could be a message queue for all we know). Application and DevOps decoupled.  
  * After: From 80 snowflake jobs to 2000+ jobs and 300+ pipelines.  Implementors knew exactly for what purpose the CI was used. Running on latest versions of Jenkins at all times. All intelligence and business specifics added around the contract.  
* Routing:
  * Before: haproxy/nginx as a tool. Started with one monolith as all startups do.  Every new service added multiple snowflake routes. Nested paths that routed to different services at different depths. Proxies across applications. Struggling to define traffic past 12 services.  
  * Rethink: Ingress as a contract.  Adopt kubernetes ingress as the interface. Back by strong test cases/validation to make it trample-proof (every rule must contain the namespace as first-level path or first-level subdomain). Decouple applications and devops.  
  * After: Scaled to 120+ services. All intelligence and business specifics enhanced without needing to change any service. Single standard for internal and external service discovery, retry-next-hops for idempotent requests, security, bot detection, rate limiting, logging, monitoring, alerting, pingdom, and much more built-in.  

I could keep going on, but I guess you get the gist of it. GoEuro comes from the very same place. We've all been there :) Hence most  audience (both mature and fresh who may be repeating the mistake of Kubernetes-as-a-tool) will be able to relate to this talk.  Finally, we'll cover some important aspects of the Contract itself, such as: Why Jenkinsfile is still a tool and not a contract, being test driven, evolution and not being treated as set-in-stone (versioning), and finally - nothing is a substitute for Human collaboration and to keep working with engineering.
