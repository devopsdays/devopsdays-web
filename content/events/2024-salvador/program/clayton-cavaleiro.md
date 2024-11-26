+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Minhas atuais buscas são em ter excelência em infraestrutura como código com terraform, onde tenho orgulho de conseguir ser referência nos ambientes onde trabalho, e por arquiteturas de sistemas distribuídos e tolerantes a falhas."
Type = "talk"
Speakers = ["clayton-cavaleiro"]
+++

Partindo da necessidade de termos mais resiliência em nossa interface GraphQL responsável por boa parte de nossa interface de comunicação via api, partimos desde experimentos até chegar no modelo completamente nativo no kubernetes usando a nova api do api gateway

Iremos mostrar nessa talk curta os problemas que passamos com o ingress e o application load balancer da AWS, como identificamos a necessidade de partirmos para uma solução mais resiliente, e como chegamos na interface nova do api gateway e o que enxergamos de vantagem no futuro dela.

Estamos já em produção com a nova interface e mesmo usando o mais básico estamos tendo já vantagens usando como ferramenta para gerir o api gateway o gateway do kong(https://docs.konghq.com/gateway-operator/latest/).
