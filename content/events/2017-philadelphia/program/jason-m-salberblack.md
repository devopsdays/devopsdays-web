+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Provisioning is Magic - A Declarative Approach to AWS Infrastructure"
Type = "talk"
Speakers = ["jason-m-salberblack"]
+++

Choosing appropriate tooling for the provisioning of virtual infrastructure such as servers, storage, and networking components is a challenge due to the variety of available tools. These tools range from provider-native services such as AWS CloudFormation to multi-provider technologies such as Hashicorp's Terraform. Between the native and non-native solutions is a family of light-weight tools that operate directly on provider-native template files. I will briefly review the trade-offs between the different types of tooling, discuss why we chose the CloudFormation template-generating library SparkleFormation to meet our specific goals, and conclude with a tour of our SparkleFormation implementation.
