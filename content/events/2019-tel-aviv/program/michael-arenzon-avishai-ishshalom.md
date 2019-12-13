+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = " HTTP Fundamentals Workshop"
Type = "talk"
Speakers = ["michael-arenzon","avishai-ish-shalom"]
+++

HTTP is the de-facto standard protocol of the internet and heavily used in almost all systems - in depth understanding of HTTP is crucial for design, performance scaling and day to day operations.

Part 1 (~1h) HTTP Overview - History and Concepts
* Where is HTTP in the protocol stack, re-cap of HTTP versions, overview of well-known web servers (Apache/Nginx)
* Concepts - URI, method type, status code, header, etc.
* Advanced topics - Virtual hosting, Reverse/Forward proxies, TLS, protocol extensions, load-balancer, CDN.
* HTTP/2

Part 2 (~2h) [Hands On] Writing a web server
* Creating a basic HTTP server from scratch (URL and headers parsing, req/res flow)
* Implementing virtual hosting and dynamic routing
* Improving client handling with cache, compression, timeouts and keepalive.


Part 3 (~1h) [Hands On] Implementing advanced features
* Reverse proxy, SSE, SNI-based routing (TLS)
* HTTP pipelining (/multiplexing) and head-of-line blocking
