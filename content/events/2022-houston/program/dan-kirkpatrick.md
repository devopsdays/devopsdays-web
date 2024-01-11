+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Building a K8s Internal Developer Platform"
Type = "talk"
Speakers = ["dan-kirkpatrick"]
sharing_image = "dan-kirkpatrick.png"
+++

<hr/>
<b>IMPORTANT</b>: Bring your own laptop with Rancher Desktop and git installed.
<hr/>

An Internal Developer Platform provides a local environment for developers that closely mimics their production environment. The Internal Developer Platform we present includes:

Kubernetes for container orchestration
On-demand Postgres databases
Full single sign-on with integration to LDAP/Active Directory
An observability stack for centralized logging and monitoring
Automatic TLS certificate management
I use Jupyter Notebooks to present short tutorials to install Kubernetes and components required to build an Internal Developer Platform. These notebooks allow participants to follow along during the workshop, installing and configuring all of the components locally using Docker Desktop. These components include the NGINX ingress controller, cert-manager for automatic TLS certificate management, Keycloak (with kube-oidc-proxy and oauth2-proxy) for single sign-on and integration to LDAP/Active Directory, the Grafana/Loki/Prometheus stack for observability and monitoring, the Zalando operator for Postgres to provide on-demand developer databases, and DNSmasq to provide local DNS name resolution.

After only one hour, all of these components can be installed and fully operational on developer's local laptops, providing a development environment that closely mimics production operational environments. This approach allows participants to learn Kubernetes in an environment that is safe to experiment without incurring large or unexpected cloud computing bills.