+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "On the difference between configuration management and provisioning."
Type = "talk"
Speakers = ["carlos-nunez"]
Youtube = "6eayt6FXH88"
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = "https://blog.carlosnunez.me/"
+++

##### TALK DESCRIPTION

Provisioning infrastructure with configuration management tools like Chef and Ansible can get tricky. This talk will explore how this unfolds and introduce using alternative tools like Terraform and CloudFormation for this purpose.

At many organizations I’ve worked at over the last few years, I’ve seen a common anti-pattern: configuration management (CM) tools used incorrectly as provisioning tools. This has been frustrating because using CM tools to provision infrastructure undoubtedly leads to complex code that is unmaintainable and hard to extend.

The purpose of this talk is to show how I’ve seen this unfold and how using tools such as Terraform and CloudFormation significantly reduce this complexity without compromising your reach with infrastructure as code.