+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Mapeando 1 milhão de recursos em uma Cloud"
Type = "talk"
Speakers = ["victor-monteiro"]
youtube = "iQ-vaoeNOxU"
slideshare = "https://www.slideshare.net/vanessagomesl/entrega-contnua-e-aplicaes-em-produo"
slides = "https://assets.devopsdays.org/events/2018/saopaulo/presentations/ignite-Victor_Monteiro-Mapeando_1_milhao_de_recursos_numa_cloud.pdf"
+++

Como conseguimos mapear 1 milhão de recursos da Cloud da Globo.com espalhados em dezenas de sistemas num ambiente Everything as a Service.

A Globo.com proporciona uma vasta quantidade de opções para os times de desenvolvimento criar e fazer deploy um projeto. Dando liberdade para os desenvolvedores escolherem arquitetura, linguagem, DB, etc.

Para proporcionar todos esses recursos, as equipes de infraestrutura buscam, automatização dos fluxos, processos e configurações, e assim garantir uma entrega rápida da infraestrutura para os times de desenvolvimento. Por pensar dessa forma, temos Everything as a Service dos recursos de infraestrutura, o que possibilita que entreguemos Storage, Redes, ACL, Firewall, Banco de Dados, DNS, Dominios, VMs, Containers, etc, como serviços. Somando os recursos gerenciados, facilmente passa o alcança o patamar de centenas de milhares de itens e relacionamentos entres os sistemas

Mesmo com a automatização não havia uma forma sistemática de entender como elementos TI se relacionavam. Para resolver esse gargalo que criamos o Globo Map, uma ferramenta open source e extensível, usada para fazer esse mapeamento.
