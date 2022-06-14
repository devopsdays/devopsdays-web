+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "THE THREE DISCIPLINES OF CI/CD SECURITY"
Type = "talk"
Speakers = ["daniel-krivelevich"]
+++

CI/CD pipelines are quickly becoming the path of least resistance for would-be attackers into sensitive internal systems, gaining access to critical data, with minimal effort.

In the InfoSec world when we talk about CI/CD security often times this focuses on specific aspects of securing your pipeline - scanning the code, protecting secrets, securely managing code deployments, or even authentication and authorization mechanisms, but we rarely talk about all of these together.

After years of being in the trenches and realizing that the attack surface is growing and the threat landscape becoming more and more complex, it has become increasingly apparent that security teams need to adapt and modify strategies to keep up with the new reality of CI/CD protection, without compromising developer velocity.

In this talk I would like to propose a new way of thinking about CI/CD security - that encompasses the three disciplines that comprise CI/CD security - security in the pipeline, of the pipeline, and around the pipeline. Partial coverage of any or all of these disciplines simply will not cut it with the continuously evolving risk landscape. Security engineers need to address each of these aspects in their entirety to provide the full scope of coverage that modern organizations need, and I will take a deep dive on the challenges each introduce, and the approaches and techniques for mitigating them based on adversarial sec research.