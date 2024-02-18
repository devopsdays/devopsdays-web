+++
Talk_date = "2023-05-20"
Talk_start_time = "11:00"
Talk_end_time = "11:30"
Title = "Configurando pipelines no Github Actions para Terraform"
Type = "talk"
Speakers = ["felipe-rocha"]
+++

Contexto Para manter o fluxo de entrega de infraestrutura que vise o time de desenvolvimento como principal cliente, o provisionamento de infraestrutura deve seguir o fluxo dos desenvolvedores, evitando assim o provisionamento desnecessário de infraestrutura e a garantia de que todas as versões seguintes serão atendidas e corresponderam as necessidades do time no tempo em que eles precisarem destes recursos.

Problema Coordenar a entrega de recursos garantindo que a infraestrutura esteja pronta pra suportar as aplicações correspondentes por ambiente de forma segura, repetível e automatizada.

Solução Associar a entrega de recursos de infra ao deploy de um código pode ser uma solução interessante, economizando tempo e reduzindo custo. Essa integração e entrega associada a SDLC do produto/aplicação sendo desenvolvida garante que: 

1- Todos os recursos estejam sempre atualizados com a ultima definição da infra associada. 

2- Não haja divergência entre os recursos entregues entre ambientes 

3- Repetibilidade e acurácia na entrega da solução.
