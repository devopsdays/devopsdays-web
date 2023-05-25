+++
Talk_date = "2023-08-02"
Talk_start_time = "13:40"
Talk_end_time = "14:10"
Title = "Do not obsess over code coverage"
Type = "talk"
Speakers = ["arpit-chaudhary"]
+++

Most development teams use code coverage as a barometer of quality. Code coverage is the amount of your code and code branches covered by your tests. This is an important metric to measure success on but does not provide a complete picture.

Code coverage have shortcomings:
It assumes all lines of code as equally important to cover.
It provides no information about quality of test cases and checks that the tests perform.
It is easy to analyze a quantitative metric like code coverage and that is why most new teams obsess over it. It distracts the team from the actual goal which is to make sure that your code works as intended. Covering an extra print statement without right verifications would provide no value.

It is important for developers to have a long lasting focus on designing tests that cover different possible scenarios and also have appropriate verification to make sure that the behavior of code is correct in all aspects.
