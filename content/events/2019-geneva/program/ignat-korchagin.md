+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The definitive guide to make software fail on ARM64s"
Type = "talk"
Speakers = ["ignat-korchagin"]
+++

Cloudflare operates a large distributed network: we have more than 150 data centres across 75 countries. We recently decided to integrate a second CPU architecture into our infrastructure. The obvious choice was ARM64. Apart from doing the basic hardware bring up we also needed to port all our software stack to ARM64, which includes a lot of in-house and third-party open-source components. Turns out, even if the software is written in a cross-platform architecture-agnostic language, there are a lot of potential ways it can fail on a different architecture. This presentation describes the issues we encountered, when porting our software to ARM64 and provides some advice for developers on how to avoid them, when writing new code.
