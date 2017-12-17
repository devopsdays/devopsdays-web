+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "NoSQL Means No Security?"
Type = "talk"
Speakers = ["philipp-krenn"]
youtube = "yQ1AH9mIbiw"
slideshare = "https://www.slideshare.net/KevinCross4/philipp-krenn-nosql-means-no-security"
+++

New systems are always interesting targets since their security model couldn’t mature yet. NoSQL databases are no exception and had some lurid articles about their security, but how does their protection actually look like? We will take a look at three widely used systems and their unique approaches:
* MongoDB: Widely criticized for publicly accessible databases and a common victim of ransomware. Actually, it provides an elaborate authentication and authorization system, which we will cover from a historic perspective and put an emphasis on the current state.
* Redis: Security through obscurity or how you can rename commands. And it features a unique tradeoff for binding to publicly accessible interfaces.
* Elasticsearch: Groovy scripting has been a constant headache, but the new, custom-built scripting language Painless tries to take the pain away literally.