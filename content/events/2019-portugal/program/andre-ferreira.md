+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Going 100% Kubernetes in a Production component"
Type = "talk"
Speakers = ["andre-ferreira"]
+++

The creation of the base cluster infrastructure, sitting outside of the deployment pipelines, was automated through Terraform. The Kubernetes deployment themselves were generated using Rudder, a simple internal templating engine (instead of Helm), and deployed using the same base processes and CD pipelines used in the on-premises infrastructure. Another aspect that needed some attention was connectivity between datacenters as the component both uses and is used by other components, so a VPN was necessary. We will walk the audience through our journey, also expanding on the problems we faced and how we overcame them.