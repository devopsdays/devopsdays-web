+++
Talk_date = "19.09.2017"
Talk_start_time = "09:45"
Talk_end_time = "10:15"
Title = "Homebrew CI/CD for a startup — bumpy road ahead"
Type = "talk"
slideshare = "https://www.slideshare.net/DODRiga/devopsdaysriga-2017-samat-galimov-dmitry-zakharov-homebrew-cicd-for-a-startup-bumpy-road-ahead"
Speakers = ["samat-galimov", "dmitry-zakharov"]
+++

<p><em>There are quite a few well developed and supported CI/CD solutions in the market. Might it be feasible and reasonable to develop and support your own for a small startup with 1 operations engineer? The devil is in details and answer is not that obvious as it looks.</em></p>

<p>Meduza is a small (10 people developers team) news media startup. Over a course of 3 years, our one full-time operations engineer managed to support 20 main services on the diverse technological stack - we have RoR, Ruby, Elixir, Python and golang powered Tier-1 services. On top of that, we support over 100 separate small node.js backed projects of Tier-2. Most of the non-critical projects are automatically deployed upon repository pushes on GitHub and Bitbucket. The whole system is just 1000 CLOC Golang.</p>

<p>Now we see a clear a need for CI/CD system for our Tier-1 services, too. Should we adopt industry standard, such as CircleCI, Travis CI or Jenkins? Or should code our own? Despite ‘reinventing your own wheel’ is a poster of a bad decision in the operations community, we found that answer might not be that simple.</p>

<p>This will be Meduza story of the search for a better CI/CD. </p>