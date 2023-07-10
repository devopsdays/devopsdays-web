
+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Como escalamos a entrega de Infraestrutura em uma Consultoria de Cloud com Terraform"
Type = "talk"
Speakers = ["julia-pedrosa"]

+++

Entrei numa Consultoria de Cloud com um grande desafio na mesa: Adotar o IAC de forma esturturada, e prover um novo padrão para que todo o time de Implantação pudesse adotar.

No início nós enfrentávamos um grande problema na entrega de infraestrutura para nossos clientes, pois enquanto alguns usavam Terraform individualmente e de forma quase que descartável, outros ainda dependiam muito do ClickOps, o que é comprovadamente a cause de muito retrabalho e sucetibilidade a erros.

O maior complicador para a estruturação deste padrão era o fato de trabalharmos com diferentes tamanhos de projetos, tipos de segregação de ambientes e diferentes tipos de clientes.

Após muito estudo e laboratório, conseguimos criar um padrão estruturado para a entrega de infraestrutura com Azure Repos e Terraform Cloud.

Embarque comigo para entender como resolvemos nosso problema, escalamos o uso do IaC e chegamos onde estamos atualmente! :)