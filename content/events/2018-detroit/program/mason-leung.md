+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "From LUKS to Vault, our journey of secret management"
Type = "talk"
Speakers = ["mason-leung"]
+++

HealthTech is a compliance heavy space, a small mishap can cause grave consequence. Protecting customer data is a top priority for companies in that space. “Bring our own dragons” which means never hand over our encryption keys is a principle we follow dearly. The secrets to access PHI and PII data are secured with multiple safeguards. The first attempt to protect secret was a homegrown disk encryption solution using LUKS and it has worked well for a few years. As our customer base grow and the supporting infrastructure changes, we need to rethink how to handle secrets. We recently finished implementing our third generation of secret management solution with HashiCorp Vault. This allows us to better handle compliance requirements, application complexity and incorporate new engineering workflows. This talk is about the journey of migrating from homegrown to open source, design tradeoff and lessons we learned working in the healthcare space
