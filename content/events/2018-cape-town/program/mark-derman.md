+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Deployment automation on prem in a Microsoft corporate. Automating DALAS delivery at Direct Axis with Octopus deploy."
Type = "talk"
Speakers = ["mark-derman"]
+++

DALAS, the Direct Axis Loan Application System is a monolith 15 years in the making. Under heavy fire for a few years now it is undergoing continuous amputation, and a micro-service ecosystem is in construction around it. In 2017 that meant 16 dev teams, 21 environments, 125 deployables... And configuration sprawl, database control by theft, plus watching planks warp while you and your team get your dev environment back from the dead,again, over a week, or 2. A year back we started tackling unified deploy, database and configuration automation in Direct Axis’s large traditional .Net ecosystem using Octopus Deploy. While notparticularly exciting it has been very valuable, and will ease the way for the upcoming Dockerisation and Kubernetes transition. In this talk I’ll cover a few deploy automation principles, briefly introduce Octopus deploy and cover lessons learnt + war stories.
