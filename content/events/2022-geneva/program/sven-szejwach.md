+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How did we implement a zero trust credential system for our users, leveraging dynamic secrets, scope management and lease time"
Type = "talk"
Speakers = ["sven-szejwach"]
+++

In the dangerous world that is Ze Internet, how can someone trust their solutions providers with critical information ?

Well, the bottom line is that they don't have to. For instance, our way to completely avoid enlarging the trust circle of user credentials, is to NOT get access to this information at all. But if your user had to give this information to you, it is because you needed it in the first place.

This talk will be about how and why, at Squarescale, we leveraged the power of dynamic secrets and scope management, provided by the Hashicorp solution Vault, to handle this conundrum.