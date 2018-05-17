+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "News Feed: Source to Production"
Type = "talk"
Speakers = ["james-geboski", "pedro-marques-da-luz"]
+++

Taking News Feed's various binaries from source-code to production is a quick, mostly automated process. Starting at one end of the push pipeline, a binary package must successfully traverse all of the various phases before potentially making it to production. From the source-code, binaries are built, packed, tested, and pushed multiple times per day. The process begins by building different “flavors” of packages with different compilers, flags, and sanitizers. After a bundle of these package are built, the push scheduler tests them with cloned production requests and nullified responses. During the testing phase a slew of metrics and counters are collected. These values are compared to production to determine if a package is worthy of moving forward. Once a bundle has the “seal of approval” for production, the scheduler will start progressively rolling the binaries to hosts in the fleet. This entire process is automated, except for times of failure when an engineer needs to get involved. It is important to learn from these incidents, so push infrastructure can remediate problems before an engineer is ever pinged.
