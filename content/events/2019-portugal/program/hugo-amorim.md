+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The delivery pipeline @ Banco BPI"
Type = "talk"
Speakers = ["hugo-amorim"]
+++

### Context

This talk reports a real-world experience regarding a DevOps adoption at BancoBPI. BancoBPI is one of the top five banks in Portugal. Our IT division is bigger than most SME IT companies in Portugal are. We manage a vast and heterogeneous IT ecosystem. More than 80 development teams are responsible for developing hundreds of application components and thousands of services. These application components and services are spread across different platforms, that span from the decades-old Mainframe platform, where we still have some applications from the ’80s, to the cutting edge mobile platforms for iOS and Android apps. On top of all these platforms, we have dozens of different technologies. Applications components and services change at a very frequent pace to adapt to a quickly changing business in a heavily regulated market with strict audit requirements.

### Challenge

How to handle the integration challenges of an IT ecosystem with thousands of services and where a significant percentage of business requests crosscut multiple systems? How to orchestrate all these changes from development to production, in compliance with regulatory demands, including strict traceability and audit requirements? How to assure the IT systems robustness and the information security expected from a bank?

### The Journey

At the begging of this journey, we were faced with a set of issues that were split into two main vectors: 1. Diversity: different tools, different repositories, and different processes, which turned integration and traceability into challenging and time-consuming tasks; 2. Automation: or lack of it, since a significant part of the procedures on the application lifecycle were manual-based tasks which, besides being error-prone, limited the ability to get faster and accurate feedback.

##### Culture

We started by merging all SCM tools in a single SCM platform. Today, all teams use the same terminology, the same interface, the same way of managing changes and deliver them, the same processes regardless of the technology or platform. This merge gave us the necessary process standardization and the ability to orchestrate the delivery process with a single workflow that guides each change from DEV to PRD. The single SCM platform is now the starting point of all delivery processes, which simplifies traceability and shortens the feedback loop for delivery actions. Having a similar way of managing and deliver changes also allowed us to consolidate continuous integration practices, which in turn helped to integrate cross-platform changes by guaranteeing the necessary consistency between environments and technologies.

##### Automation

We also did a lot of work on Automation towards zero manual-based delivery processes. We added the support to several types of artifacts that were manually delivered (database as code, application configurations, infrastructure configurations, deploy configurations). Currently, the delivery of almost all types of artifacts is fully automated for all technologies and environments. This automation helped to eliminate failures due to human error, to reduce the feedback loop for all changes and to obtain the necessary consistency between multiple deploys across all environments in order to give development teams the confidence to repeat the delivery process as often as necessary.

##### Lean

An important role regarding the success of this initiative is played by development teams. The Scrum methodology adopted by all development teams was another important driver for this transformation. A methodology that relies on shorter feedback-back loops and continuous improvement is the perfect match for a DevOps adoption.

### Benefits

* Consistent deploys on all environments
* Improved logging and traceability
* Real-time feedback
* No surprises

### Future steps

* Continuous Delivery
*Application Catalog
*Monitoring
*KPIs