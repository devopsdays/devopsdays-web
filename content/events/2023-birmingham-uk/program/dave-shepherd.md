+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "There are 2 types of people; those who can keep a secret and I can’t tell you about the other"
Type = "talk"
Speakers = ["dave-shepherd"]
+++

 This is a short talk about the importance of good secrets, specifically things that are used to secure you systems. There are broadly two types of secrets; static and dynamic.
			Static secrets are things like that shared database password that is now known by everyone because it was a little hard to sort out individual access for people/services when it was first set up and now it’s too late because changing it might break stuff. Or that API key that relies on someone manually changing it when necessary so it rarely gets done.
			I discuss why static secrets are not really a great idea and that having the ability to use short lived credentials for authentication is crucial to keeping your stuff secure. These dynamic secrets should be generated when needed, auditable back to the individual/system that requested them and revoked when finished with. Dynamic secrets reduces the impact if credentials get leaked as they can only be used for a short amount of time.
			<li>1. Try and avoid secrets that are not easily changed, for example; those have to be changed manually</li>
			<li>2. Use built in mechanisms to request/generate secrets in a trusted way when required</li>
			<li>3. Secrets should not live longer than they need to - revoke them when they’ve been finished with</li> 
