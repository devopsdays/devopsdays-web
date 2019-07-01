+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Just in Time Cloud Infrastructure - Redefining the Relationship Between Applications and Cloud Infrastructure"
Type = "talk"
Speakers = ["austen-novis"]
slides = "https://docs.google.com/presentation/d/e/2PACX-1vSNm_LRQQSH76P2bmOnSBvk_W8cYFRvsgZ22e2GZMkWT0Fg96tBmadItXuL7bI1e7v25zv_AIQkPFyd/pub"
youtube = "DaHL2itWZeg"
+++

Most cloud engineers are familiar with the paradigm of Infrastructure as Code (IaC), which provides the ability to model and deploy your cloud infrastructure via code, or code-generated configuration files. IaC drastically reduces the reliance on manual processes such as creating separate configurations for multiple environments, helps minimize misconfiguration mistakes through automated testing and version control, and can significantly speed up deployment times through CI/CD pipelines.

Implementing IaC at scale still requires significant investment, and many companies have teams dedicated to the management and deployment of their cloud infrastructure. This can cause friction between the infrastructure and application teams since changes to shared resources can have an impact across teams. Deployment cycles can also be significantly slowed down if complex integration tests are required whenever core components are updated to ensure no unintended consequences occur downstream.

Just in Time Infrastructure (JiTI) which is a term my team created, looks to solve some of these difficulties by tying the infrastructure code more closely to the application code. This serves the purpose of isolating the infrastructure as much as possible, coupling infrastructure versions to application versions, and allowing applications to potentially be shared and scaled across accounts.

This talk will cover the origination of JiTI and the problems it is designed to solve, dive into the benefits and limitations of utilizing JiTI, and end with a working example.

<a href="https://assets.devopsdays.org/events/2019/toronto/AustinNovis_CloudInf_Lg.jpg" target="_blank"><img src="https://assets.devopsdays.org/events/2019/toronto/AustinNovis_CloudInf.png" alt="Graphic Recording Just in Time Cloud Infrastructure - Redefining the Relationship Between Applications and Cloud Infrastructure" /></a>