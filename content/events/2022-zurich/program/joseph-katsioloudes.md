+++
City = "Zurich"
Year = "2022"
talk_date = "2022-05-31"
talk_start_time = "15:00"
talk_end_time = "17:15"
title = "Security as Code: A DevSecOps Approach"
type = "talk"
speakers = ["joseph-katsioloudes"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

### Workshop

Security as Code (SaC) is the methodology of codifying security tests, scans, and policies. Security is implemented directly into the CI/CD pipeline to automatically and continuously detect security vulnerabilities. Adopting SaC tightly couples application development with security and vulnerability management, while simultaneously enabling developers to focus on core features and functionality. More importantly, it improves the collaboration between Development and Security teams and helps nurture a culture of security across the organization.

In this session, we will review lessons learned from DevOps to implement a successful DevSecOps culture, in particular how we can make developers contribute security checks with the SaC approach. We will introduce CodeQL, a language that allows us to implement security checks with code, and will demo how we can code queries for vulnerabilities and misconfigurations so they can be identified as soon as they hit your CI/CD pipeline.

---

**Prerequisites for this workshop**

To attend the workshop, we would need your GitHub handle to provide you access. We also recommend to install the following pre-requisites that should take around 3 minutes.

Don’t worry if you don’t have time or you face technical difficulties because time will be provided during the workshop to go over the steps.
Prerequisites and setup instructions

Please complete this section before the workshop.

Install Visual Studio Code.

Install the CodeQL extension for Visual Studio Code by navigating on the left toolbar, click Extensions and search for CodeQL. Install the verified extension from GitHub. Full details here.

— You can stop here if you haven’t provided the organisers or the instructor with your GitHub handle because you will not have access to the workshop files.
Clone this repository:

git clone --recursive https://github.com/jkcso-workshops/codeql-workshop
Do not forget the --recursive flag which allows you to obtain the standard CodeQL query libraries, which are included as a Git submodule of this repository.
Open the repository in Visual Studio Code: File > Open (or Open Folder) > Browse to the checkout of codeql-workshop.

Connect the codebase

Click the [QL] rectangular icon on the left sidebar

Then click on the tab on top named "Databases"

Choose the 3rd option named "From a URL (as a zip file)" and Copy Paste: https://github.com/jkcso-workshops/db/releases/download/vuln-code/MobileSheperd-CSInjection.zip

Press Enter and the database should be downloaded in a few seconds

Hoover over the newly imported database called "MobileSheperd CSInjection" and click "Set Current Database". A "tick" should now appear to indicate that the database is connected