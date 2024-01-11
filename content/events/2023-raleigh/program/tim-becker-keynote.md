+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Platform Engineering from Scratch"
Type = "talk"
Speakers = ["tim-becker"]
+++

Over the past year and a half, I have built our Cloud Internal Development Platform pretty much from scratch. I thought talking through my experience could be an interesting presentation: what went well, what didn't, expectations vs reality, etc. I was lucky enough to have fairly ideal circumstances for building the platform, which I don't think is very common, so I think people would be interested to see a real life example of what it looks like. It's definitely not a paragon of Internal Development Platforms, but I also think that makes it interesting since it's real.


Platform Goals:
1. Be a Thinnest Viable Platform (teamtopologies.com/key-concepts-content/what-is-a-thinnest-viable-platform-tvp)
    * Reuse solutions across projects
    * Ease adoption of best practices (easy to do things right, hard to do things wrong)
    * Ease internal mobility across projects
2. Flexibility to allow for innovation and unique solutions specific to a project


Challenges:
* Scaling permissions.
* Difficulty abstracting database internals.
* Supporting one-off solutions, debugging, and experiments without accruing tech debt.
* Projects with diverging strategies when the Platform didn't have a solution yet.
* Figuring out and communicating Platform Team vs Developer responsibilities.
* Team of one.


Fairly ideal circumstances:
* Small scope: able to keep it simple.
* Small, engaged team: worked closely with the users, got quick feedback.
* Greenfield, but with clear direction so we could build for specific, known use cases.
* Important work, but not mission critical: time and support to build well.


I could probably make most of our documentation, terraform modules, etc. publicly accessible so people could check it out during and after the talk, I think it could spark good conversation.
