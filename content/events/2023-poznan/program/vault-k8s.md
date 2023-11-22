+++
Title = "Connecting Vault secrets with Kubernetes via ExternalSecretsOperator"
Type = "talk"
Speakers = ["jakub-jakubik"]
+++

A quick overview how to use External Secrets Operator to make secrets stored in Vault be visible to your kubernetes workloads.

Some apps can't or don't want to talk to Vault directly, yet still can benefit from storing and managing the secrets there. External Secrets Operator is a set of custom api resources that provide an abstraction layer between the pod and the secret store. We will do a quick intro what needs to be configured for ESO to work.