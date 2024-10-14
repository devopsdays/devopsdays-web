+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "5 Reasons You're Struggling to Debug Your Infrastructure in Under an Hour"
Type = "talk"
Speakers = ["roxane-fischer"]
Youtube = ""
Vimeo = ""
Speakerdeck = ""
Slideshare = ""
Slides = ""
Website = ""
+++

##### TALK ABSTRACT

In this lightning talk, we’ll dive into the five key reasons why debugging your infrastructure in under an hour remains such a challenge:

- Lack of Centralized Visibility
    - IaC codebases are fragmented, with resources spread across multiple repositories. We’ll discuss the pros and cons of mono vs. multi-repo practices.
- Inadequate Historical Data and Change Tracking
    - Understanding what has changed over time is crucial, yet tracking changes is challenging, often requiring tedious git diffs and log searches.
- Insufficient Impact Analysis
    - Tools like Terraform Plan have limitations in predicting the effects of infrastructure changes. We’ll share stories of how attempted fixes with poor visibility led to new outages.
- Fragmented Documentation
    - Maintaining high-quality documentation is tough. Scattered documentation across various tools can slow down response times, especially when the code isn’t yours.
- Complex Multi-Cloud Environments
    - Handling multiple cloud providers is often necessary for compliance and reliability, but the complexity can lead to intertwined sources of errors.