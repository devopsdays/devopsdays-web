+++
Title = "Thiago Rodrigues"
Type = "speaker"
image = "thiago-rodrigues.jpg"
linktitle = "thiago-rodrigues"
+++

Cloud Architect e Grafana Champion, Thiago Rodrigues é especialista em observabilidade, atua com infraestrutura cloud-native e sustentação de ambientes Kubernetes. Além disso, é responsável por implementar a cultura de observabilidade e práticas de SRE.

## Palestra

Blue/Green na Prática: Atualizando PostgreSQL no RDS e Aurora em Ambientes Críticos

Atualizar a versão de um banco PostgreSQL em produção é uma das operações que mais tira o sono de times de infraestrutura: janela de manutenção, risco de downtime, rollback complicado e, no pior caso, corrupção de dados. As abordagens tradicionais — `pg_upgrade` in-place, dump/restore ou réplica promovida na mão — trazem downtime, risco ou horas de trabalho manual. Nesta palestra, vamos mergulhar nos **Blue/Green Deployments** do Amazon RDS e Aurora: como a AWS clona seu ambiente de produção, mantém tudo sincronizado via replicação lógica e faz o switchover em cerca de um minuto, com rollback rápido se algo der errado. Vamos ver o fluxo completo na prática, e os problemas que encontramos que a documentação não conta.
