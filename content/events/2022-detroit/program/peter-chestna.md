+++
Talk_date = "2022-08-26"
Talk_start_time = "13:30"
Talk_end_time = "13:35"
Title = "What Stinks? How Developer Hygiene Impacts Security"
Type = "talk"
Speakers = ["peter-chestna"]
+++
The vast majority of code in modern applications is made up of open-source components. This allows developers to focus on value-generating features and not on scaffolding and foundations. The challenge is that this scaffolding is not free like a lunch. It’s free like a puppy. That means that not only should you be careful in your selection, but that you must also be prepared to give it care and feeding. This talk will provide actionable guidance for responsible use of open-source software.

• How careful are you in your component selection?
  o Actively maintained
  o Robustly supported
  o Secured
• Do you keep track of what you’re using?
  o Provide a BOM to downstream consumers
  o What if a new CVE is announced?
  o What about malicious code?
• Have you provided for regular maintenance?
  o Components age like milk, not wine
  o Policy for component drift
  o Comprehensive automated testing to allow for quick updates
