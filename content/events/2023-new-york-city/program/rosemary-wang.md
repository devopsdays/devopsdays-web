+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Refactoring Applications for Dynamic Secrets"
Type = "talk"
Speakers = ["rosemary-wang"]
+++

An application uses a database password that should change every thirty days. However, it does need to change, your application must go offline to reload configuration and use the new password. Can an application change passwords or credentials with minimal downtime?

In this session, you will learn how to architect and refactor an application to handle dynamic secrets like passwords, tokens, or secrets. This demo-driven session progressively refactors a Java application to reload when a database password changes and identifies patterns for applications running in both virtual machines and containers on Kubernetes.

No matter which programming language you are familiar with, you'll be able to apply the patterns from this session to retrieving secrets across different applications and platforms.
