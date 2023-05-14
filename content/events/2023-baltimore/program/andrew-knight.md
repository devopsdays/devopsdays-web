+++
Talk_date = "2023-05-23"
Talk_start_time = ""
Talk_end_time = ""
Title = "Managing the Test Data Nightmare"
Type = "talk"
Speakers = ["andrew-knight"]

+++

Good test data can be a nightmare to manage! It can make-or-break testing efforts. Should we preload our databases? Should we use dynamically-generated dummy data? What about collisions? Let's cover practical strategies for handling data both in our products and in our test cases.

Good data for testing can be a **nightmare** to manage. Sometimes, teams don't have much control over the data in their systems under test—it's just dropped in, and it can change arbitrarily. Other times, teams need to build their own data sets, either before testing or during testing. Inaccurate data can leave test gaps. Incorrect or stale data can break tests. Large data can consume too much time. Ugh!

In this talk, we'll cover strategies for defeating many types of test data nightmares:

* recognizing the difference between *product* data and *test case* data
* deciding when to prepare data statically beforehand or dynamically during testing
* using data to control how tests run or reflect product state
* hard-coding values versus discovering data in the system
* avoiding collisions on shared data

The strategies we cover can be applied to any project in any language, especially Django. After this talk, you will wake up from the nightmare and handle test data cleanly and efficiently like a pro!

