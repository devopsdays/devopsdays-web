+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Strategies to Edit Production Database Data"
Type = "talk"
Speakers = ["julie-qiu"]
+++

Running ad hoc SQL write queries against the production database is sometimes necessary. This is particular true when features such as GUIs and scripts to support data edits are not prioritized. However, these ad hoc write queries can cause a lot of trouble - especially when mistakes are made and the queries ran are not logged.

This talks discuss strategies and infrastructure that can help you protect yourself when running SQL writes against a database. We will discuss lessons learned from implementing each of the following strategies, and the pros and cons of each. All of these strategies have actually been implemented at the speaker’s company:
