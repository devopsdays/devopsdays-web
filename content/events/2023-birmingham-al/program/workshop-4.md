+++
Talk_date = "2023-04-21"
Talk_start_time = "10:50"
Talk_end_time = "11:50"
Title = "Scoring open-source dependencies to detect 'weak links' in your software supply chain"
Type = "talk"
Speakers = ["ashish-bijlani"]
+++

Open-source software (OSS) has become the de-facto standard way of
building digital apps and services. Modern OSS is “supplied” as packages
on popular public registries such as NPM and PyPI. Unfortunately, bad
actors leverage vulnerabilities in the modern supply channel (e.g.,
dependency confusion, typo-squatting) to propagate deliberately bad
(malicious) code, and carry out Solarwinds-like software supply-chain
attacks.

Yet, there is no way to measure “risk” from these vulnerabilities when
adopting OSS packages. The state-of-the-art OSS vulnerability scanners
assume that the third-party OSS code is benign, and therefore, only
address threats from accidental programming bugs in benign code (or
CVEs) such as Log4J. They fail to protect against threats from bad actors.
Today, developers rely on vanity metrics such as GitHub stars and number
of downloads to infer the security posture of OSS packages.

In this workshop, we will present an open-source security analysis
framework, called Packj, to evaluate, measure, and control the level of
modern supply-chain risks when sourcing third-party OSS packages. Its
design is guided by our study of hundreds of previously documented
malware samples. We have empirically identified several risky code and
metadata attributes that make a package vulnerable to supply-chain
attacks. For instance, use of sensitive APIs such as file accesses combined
with network communication that could be used to exfiltrate private data,
abandoned packages that no longer receive security fixes, invalid or
expired email domains of maintainers that suggest a lack of two-factor
authentication, and metadata impersonation that indicate typo-squatting.
We have built a large-scale automated system for continuous vetting of
packages, and have already identified several abandoned and malicious
packages using our security framework.