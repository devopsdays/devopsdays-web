+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "HTTP Fundamentals - Workshop"
Type = "talk"
Speakers = ["michael-arenzon"]
+++
HTTP is the de-facto standard protocol of the internet and heavily used in almost all systems - in depth understanding of HTTP is crucial for design, performance scaling and day to day operations.

Part 1 (~1h) HTTP Overview - History and Concepts

1. Where is HTTP in the protocol stack, re-cap of HTTP versions, overview of well-known web servers (Apache/Nginx)
1. Concepts - URI, method type, status code, header, etc.
1. Advanced topics - Virtual hosting, Reverse/Forward proxies, TLS, protocol extensions, load-balancer, CDN.
1. HTTP/2

Part 2 (~2h) [Hands On] Writing a web server

1. Creating a basic HTTP server from scratch (URL and headers parsing, req/res flow)
1. Implementing virtual hosting and dynamic routing
1. Improving client handling with cache, compression, timeouts and keepalive.

Part 3 (~1h) [Hands On] Implementing advanced features

1. Reverse proxy, SSE, SNI-based routing (TLS)
1. HTTP pipelining (/multiplexing) and head-of-line blocking