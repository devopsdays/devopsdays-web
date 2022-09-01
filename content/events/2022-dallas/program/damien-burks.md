+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Automated S3 Blocking with AWS Macie & DataCop"
Type = "talk"
Speakers = ["damien-burks"]
Youtube = "xPvfD-gsuo4"
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = "https://damienjburks.com/"
+++

##### TALK ABSTRACT

AWS Macie is a fully-managed data privacy and data security solution that provides customizable alerts and findings on sensitive data found in S3. Unfortunately, there is a lack of automation to prevent data exfiltration of sensitive data as reported in Macie’s findings report. In addition, there is no automation to remediate, or block, misconfigured S3 buckets. To mitigate any potential threats, the security professional must inspect the findings report and make remediation decisions based on business requirements.

In this talk, I will discuss the pre-existing gap and the open-source solution known as DataCop. I’ll also break down the architecture of DataCop, which will consist of:

1. Utilized AWS Services (Macie, S3, etc.)
2. S3 Remediation Actions - entire process and flow
3. IAM Considerations
4. Language and Development Kits

Following the architectural deep-dive, there will be more information on the value added to existing processes if this solution were to be adopted. To conclude, those who attend this talk will leave with practical knowledge on to automate the remediation of data risks in S3 based on Macie’s findings.