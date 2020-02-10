+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Defending Serverless Infrastructure in the Cloud"
Type = "talk"
Speakers = ["eric-johnson"]
+++

This technical session examines real world scenarios security professionals will encounter defending Cloud workloads running on Serverless Infrastructure. Attendees will see a series of hands on attack techniques for exploiting serverless functions, and learn how to apply security controls defending against the attack.

The session starts with insecure secrets management in Serverless. Live demonstrations will show how a vulnerability in a function can allow attackers to exfiltrate secrets from a configuration file inside the function’s execution environment. Then, see how to securely store secrets in a vault protected by the cloud key management service (KMS).

Cloud resources running under the context of a role with excessive privileges have been responsible for countless breaches. Serverless is no exception. Live demonstrations will show how to extract credentials from a function’s execution environment, and use those credentials from a remote machine to gain unauthorized access to data. Attendees will see how to enforce least privilege roles and block external requests for private cloud resources.

Serverless Infrastructure is built on an ephemeral execution environment that is supposed to live for a few hundred milliseconds and then disappear. In practice, does that hold true? Live demonstrations will explore how long data actually persists malware in the execution environment. Then, we will cover how to harden the execution environment to prevent data persistence and exfiltration.

Concluding the session, we discuss how serverless environments affect forensics and incident response teams. There are no images to analyze, no memory to dump. The only evidence left are audit logs. Learn how to capture key function events, build cloud dashboards, detect anomalies, and configure alerts to effectively monitor the Serverless Infrastructure.

Attendees will leave with an understanding of the common attacks and practical security controls for defending their Serverless Infrastructure.
