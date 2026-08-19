+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Terragrunt na Prática: Aplicando DRY para gerenciar múltiplos ambientes Terraform"
Type = "talk"
Speakers = ["leonam-ricardo-vasquez-ramos"]
+++

Quem já manteve configurações Terraform para staging, produção e mais alguns ambientes sabe o problema: na teoria é só copiar e ajustar algumas variáveis. Na prática, vira um pesadelo de módulos duplicados, estados fora de sincronia e aquele backend.tf que precisa ser atualizado em dez lugares ao mesmo tempo.

Nessa palestra, vou mostrar como o Terragrunt resolve isso na prática. Vou passar pelo problema real que me fez adotar a ferramenta, como estruturamos os diretórios, onde o terragrunt.hcl entra, e o que muda no dia a dia do time depois que você para de copiar e colar infraestrutura.