+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Ingress-Nginx: The Day After"
Type = "talk"
Speakers = ["julien-salleyron", "gina-adzani"]
+++

In March 2026, Ingress-NGINX reached its end of life: no new releases, no security patches, and no support.

If you're still running it in production, you need a migration strategy—and fast!

The challenge? Most paths forward require substantial config rewrites: annotation remapping, manual conversions, and lengthy test cycles.

In this talk, Emile Vauge (Traefik Creator) and Nicolas Mengin (Traefik Maintainer) will show how Traefik's Ingress-NGINX Provider can simplify that journey. It brings true drop-in compatibility to Traefik OSS, allowing your existing ingress configurations to run unchanged.

We'll present a pragmatic two-phase migration path: move safely today, and modernize to the Gateway API on your own schedule.

Key Takeaways:
- What really separates drop-in replacements from traditional migration guides
- How to move off Ingress-NGINX in weeks instead of months
- How to approach Gateway API adoption without deadline pressure
