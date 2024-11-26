+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Projeto de Devops com BI para análise de desempenho de projetos de software"
Type = "talk"
Speakers = ["rafael-levi-batista-costa"]
+++

Projeto feito com infraestrutura na AWS, via IaC para coletar e analisar dados de desempenho de times de desenvolvimento de software, cruzando dados de tarefas, commits, PRs, conversas no slack e calculando custos de linhas de código usando o QuickSight da AWS como ferramenta de BI

O projeto chamado devPerformance é um projeto feito com base em infraestrutura AWS, com gerenciamento de criação de recursos usando Terraform. O objetivo da plataforma é ajudar no gerenciamento e manutenção de times de software focado nos conceitos de Clean Architecture, permitindo aos administradores identificarem o quanto custa a inserção de linhas de código dentro do projeto, permitindo mudanças de arquitetura em tempo real. Para isso utilizamos recursos de infraestrutura e codificação como AWS Lambda Functions, Step Functions, Athena, QuickSight, Event Bridge, Bucket S3, entre outros recursos que de forma integrada com outros sistemas do cotidiano de um desenvolvedor proveem dados para serem analisados por uma poderosa ferramenta de BI da AWS.
