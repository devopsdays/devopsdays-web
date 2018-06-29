+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Test your tests in CI"
Type = "talk"
Speakers = ["benoit-baudry"]
+++

DevOps puts a huge emphasis on test quality, and statement coverage is the most popular metric to assess this quality. Yet, this metric is known to be a poor indicator of a test suite's capacity to detect bugs.

This talk will introduce and illustrate the benefits of another technique for test suite quality: the mutation analysis. The intuition is simple: to determine if a test suite can detect bugs in a program, simply inject bugs in this program and check if the tests can detect them.

In this talk, I will cover :

- the key principles of mutation analysis.

- the Descartes tool for mutation analysis on large Java projects

- concrete examples of weaknesses in the test suite that are missed by statement coverage and revealed by mutation analysis

- the integration of mutation analysis in the CI
