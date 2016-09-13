+++
City = "Detroit"
Year = "2016"
title = "Debugging TLS/SSL"
type = "talk"

+++

**Speaker**: John Downey, Braintree/PayPal

I’ve found when working with many developers and operations folks that there is
a real lack of understanding with regards to how TLS/SSL works. This talk was
originally given internally at Braintree to help folks understand this
important part of the stack.

The first thing to know is that SSL is technically now replaced with TLS. Even
though TLS is one of the bedrocks of internet security, it is still a
complicated and frustrating topic to approach. Together we’ll go through
acronym soup (X509, PEM, DER, ASN1) and come out the other side with a better
understanding of how the protocol works. This talk is aimed at helping you
diagnose those cryptic secure connection errors.

I’ve been working in the security realm for many years now as a developer. This
has given me an unhealthy amount of insight into how TLS/SSL works and
especially how that plays into the OpenSSL library/tools.
