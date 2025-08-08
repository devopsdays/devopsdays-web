+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Arquitetura Serverless com IaC para Soluções de IA"
Type = "talk"
Speakers = ["cleiton-pessoa"]
+++

Participei da construção de um componente voltado ao suporte de múltiplas conexões simultâneas com diferentes algoritmos de inteligência artificial, oferecendo uma interface de busca flexível para bases de conhecimento distribuídas. A infraestrutura foi provisionada com Terraform, utilizando servidores dedicados onde instalamos e configuramos o OpenFaaS para simular uma arquitetura serverless. Os bancos de dados empregados incluem Redis em cluster e MongoDB, garantindo alta performance e disponibilidade. Implementamos uma estrutura de deploy totalmente automatizada, com versionamento semântico aplicado a releases e imagens Docker. Esse versionamento é gerenciado por um script em Bash, encapsulado em um reusable workflow no GitHub Actions, o que permite a reutilização consistente em toda a base de código.
