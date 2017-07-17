+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Delivering Continuous Security with Docker"
Type = "talk"
Speakers = ["matthew-schlue"]
+++

With the trend towards increased usage of containerization, has your companies security practices kept pace? Many popular vulnerability scanners only examine the host OS, making it easier for CVE’s to go unnoticed. In this talk we explore how to identify and protect against vulnerable containers.

While containerization technologies such as Docker have many well-understood benefits, there are some non-obvious caveats that can impact the security of the overall platform. When vulnerabilities like Heartbleed are announced, DevOps teams often need to race to patch an array of impacted systems. But which containers are affected? Which systems need the most immediate attention? What change control must be observed in order to meet strict regulatory and compliance requirements?

In this talk, we will explore some of the issues my company has encountered as they’ve moved their infrastructure to an entirely container-based platform on AWS. We will cover some of the tooling required in order to quickly move bug fixes and security updates to production, and methods my team has developed to programmatically identify CVE’s and remove older, vulnerable containers that would be unsuitable for production rollbacks. These methods will be presented as additions made to a common CI/CD pipeline to deliver continuous security improvements when shipping software.
