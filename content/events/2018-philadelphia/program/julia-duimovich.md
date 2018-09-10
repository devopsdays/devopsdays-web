+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Don’t try this at home: Running Headless Chrome in an AWS Lambda"
Type = "talk"
Speakers = ["julia-duimovich"]
+++

Serverless has become a much discussed topic recently, and for good reason! But many serverless offerings have strict limitations on package size, processing power, installed packages, and general freedom, which limits what you can do with them. But what about if you want to write a web scraper using Headless Chrome? Well, it’s probably a bad idea, but it’s possible!  We’ll discuss how to compile binaries that work around Lambda restrictions, tools you can use to explore features of a  serverless environment, and show various ways to take advantage of resource sharing between different invocations of the function.
