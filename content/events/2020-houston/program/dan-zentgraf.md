+++
Talk_date = "2020-04-14"
Talk_start_time = "10:25"
Talk_end_time = "10:55"
Title = "Beyond Duct Tape - Engineering your Database into your CICD Pipeline"
Type = "talk"
Speakers = ["dan-zentgraf"]
+++

There is a deep gap between the common understanding of how to best implement CI/CD and the technological needs of driving changes into a database. Whether this gap exists due to a lack of time to focus, a lack of knowledge, or both, it is very real and can be seen in the mismatch between the speed and maturity of application change delivery relative to database change delivery.
 
While CI/CD principles are perfectly applicable to database changes, the hard part is finding a realistic way to actually apply them to the very stateful, ‘high gravity’ databases. There are workable patterns for bringing databases into CI/CD flows, but the associated knowledge of how to do so is relatively emergent. This talk will help teams bridge the gap by describing the patterns, sharing the knowledge, and walking through:
* A reminder of the principles that underpin CI/CD and make it work in the first place
* Understanding the fundamental divide over creating and handling database changes
* Deep review of a design pattern for a pipeline that delivers database changes automatically
* Example toolchain layouts within that design pattern

