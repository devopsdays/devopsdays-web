+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Higher-Order Deployments: Reducing Boilerplate With Kubernetes Custom Resource Definitions"
Type = "talk"
Speakers = ["james-bowes"]
+++

Custom Resource Definitions (CRDs) with associated Controllers can provide a more powerful alternative to templating YAML manifests in Kubernetes. This talk will cover how we use CRDs and Controllers at Manifold to define higher-order composite Kubernetes resources for our deployments at Manifold. These CRDs combine the definition of Deployments, Services, and Ingresses into a single resource that is continually reconciled by Kubernetes, preventing accidental deletion or modification of one of the components. With the associated Controllers, we are able to define new styles of deployment rollouts, and trigger automatic deployments when secrets or container images change, based on definable policies.

