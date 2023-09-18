+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Modernizing On-Premise Infrastructure for Database Scalability."
Type = "talk"
Speakers = ["manish-sharma"]
+++


In this Presentation, Manish Sharma will be talking about the automations he and his team built to manage Large Scale multi region On-Premise and Highly Scalable SQL Server Infrastructure where complex data sets and high-level analytics require computing power while achieving over 99% database availability and keeping latency between 1-3 ms.

In Particular, Manish Sharma would like to discuss and showcase how he designed and developed an Alert driven fully end to end automation using CI/CD Jenkins pipeline for provisioning and deprovisioning of storage space on SQL Server clusters which are attached to EMC PowerMax arrays. The presentation will be fun and engaging.

Problem:
Salesforce grew exponentially over the years and so did its infrastructure, databases grow by terabytes everyday and keeping up with storage provisioning on SQL Clusters was a big pain point. This involved Databases teams, Server Teams and Storage teams to work independently to request storage, provision storage, mount storage and attach storage to the databases. This would take days and a lot of back and forth communications between the teams.

Solution: 
We have developed a cross team fully end to end automation to accomplish storage provisioning on SQL clusters based on dynamic need with average turnaround time of less than 30 mins.

How:
DB Teams have automations which monitor the database growth and whenever it is flagged that new or additional storage is needed or whenever storage is no longer needed it then sends POST calls to a Swagger API, then the alert description and storage requirements which are based on data sets gets recorded in the internal SQL Database table. Then Jenkins CI/CD pipelines pick up the new requests to do validations on the server side and storage array side. Further the same scheduled CI/CD pipelines picks up the requests and completes the storage work; then it completes the server side work and also attaches the new storage to the DB. The status of the request/work gets updated in the database at each step. The pipelines decide what job(s) needs to be run based on the status of the request in the database table and all the jobs in the pipeline(s) update and read all the data from the Database table. The pipeline takes care of the change management pieces and sends communication to all the teams involved as this is a live operation on prod databases. There are thousands of requests which get executed every month so the Jenkins pipeline runs dozens of branches at the same time and all of our code is idempotent and our CI/CD pipelines continue to run jobs until the request is finished. All the logs are sent to spunk and requests can be tracked on the Splunk dashboard.

Benefit: 
Designing and implementing this workflow using Jenkins pipelines helps us manage database scalability without any human involvement. Back in the days it used to take days to complete a Storage provisioning request and now the average time is less than 30 minutes. This also saved a lot of money for the company because now storage can be removed and reprovisioned right away if it’s no longer needed.

Technologies/Languages used: 
Jenkins, Swagger API, SQL, Python, Groovy, Powershell, Slack, Splunk, SSRS.

