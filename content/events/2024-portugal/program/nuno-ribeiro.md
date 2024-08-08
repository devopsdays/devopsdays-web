+++
Talk_date = "2024-09-23"
Talk_start_time = "10:10"
Talk_end_time = "10:40"
Title = "Well, it works on my machine! How we can avoid push and pray by using Dagger"
Type = "talk"
Speakers = ["nuno-ribeiro"]
+++


### HOW?

I will be showing how, in the process of building my personal web blog, i’m using Dagger to run: - Unit Tests - Linting - Building - Testing the server locally

All locally before commiting the changes and let CI do it’s magic.


### WHAT?

Although this is a simple web application, written in Golang we will be able to see how we can use Dagger, trace a parallel to more complex appications, and how we can benefit from Dagger advantages: - NO MORE YAML, - All CI code is written in Golang! Making it readable, easy to debug and also maintainable - Locally show how to call Dagger functions to showcase some of the steps in a pipeline (be it unit testing, linting or building) - Make a change to the code and show how Dagger caching makes it faster, first by failing and then by making it a sucess, - After Git push, see the run passing all the checks


### WHY?

If it works on your machine it will work on CI.

