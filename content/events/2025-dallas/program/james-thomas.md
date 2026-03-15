+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Docker Bake is Pretty Great"
Type = "talk"
Speakers = ["james-thomas"]
+++

Docker Bake is a newly GA feature of the Docker ecosystem. It provides an HCL-based (with yaml and json options) DSL for defining the parameters of your container build. It also provides some really handy features around parameter validation, so you can clearly communicate to users what things you expect them to provide. On top of that, it includes matrix support to make it significantly easier to build a slew of containers off of a single definition.

None of these things by themselves are revolutionary, but when packaged together and included by default they provide a whole lot of convenience without much of a barrier to entry. I’ve simplified the builds of numerous pipelines with Docker Bake, and if you spend as much time caring for containers as I do I think you’ll like it quite a bit.
