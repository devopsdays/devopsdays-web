+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Graphs: The Fabric of DevOps"
Type = "talk"
Speakers = ["ashley-sun"]
+++

Lending Club runs 400+ microservices that comprise its online marketplace lending platform, the largest in America. Every one of these services has been developed, tested and deployed without drama. How? Our DevOps team uses graph database technology to manage infrastructure and operate the company.

Through our DevOps journey from monolith to microservices, datacenter to cloud, we learned that in order to automate all the things, we needed to have accurate and timely data about what exactly those things were. By loading all infrastructure components—from source code repositories to CI jobs, from bare metal hosts to virtual servers, from load balancers to auto-scaling groups—into a graph database, we created a single, central hub of information that we could query at any time and that helped us make sense of our complex, interdependent infrastructure components.

Understanding and dynamically mapping the relationships among our infrastructure gave us visibility into components that we previously had no idea were related. It allowed us to answer important questions vital to ensuring our site had four nines of uptime. “Is a service down or suffering a partial outage?” “Do we have a single point of failure?” “What services will be affected if this storage array goes down?” “Are multiple revisions of a single app currently deployed in production?” “How much are our AWS instances costing us by account and region?” “Is our secondary load balancer configured the same as our primary one?” We set up monitoring, alerting and reporting that helped us to prevent outages before they happened. We fully automated our datacenter deployments. When the time came to move to the cloud, we fully automated those deployments too. All these things and more were made possible because of our graph model.

In this talk, Ashley Sun, DevOps Engineer at Lending Club, will share the key insights Lending Club has learned throughout their DevOps journey, the technologies used, the challenges faced, and the lessons learned.
