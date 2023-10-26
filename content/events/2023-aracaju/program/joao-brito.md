+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Conheça seus clusters Kubernetes como a palma de sua mão"
Type = "talk"
Speakers = ["joao-brito"]
+++

Hoje ter mais de 1 cluster Kubernetes é realidade na maior parte das empresas e isso nos leva a grandes desafios, sendo o maior deles: Como manter os ambientes seguros de uma forma uniforme?

Ter ambientes Kubernetes seguros já seria uma tarefa complexa por si só. 
Todos sabem que mesmo depois dos anos Kubernetes permanece sendo um sistema complexo, cheio de configurações específicas e não apenas ele, mas seus componentes auxiliares como ingress, monitoração e outras ferramentas que compõem esse ecossistema. 

Tendo muitos anos implantando de gerenciando ambientes Kubernetes, desenvolvemos uma ferramenta que periodicamente escaneia clusters atrás de misconfigurations e vulnerabilidades que é a segunda maior preocupação das empresas segundo a CNCF. Ter visibilidade sobre essas issues é o primeiro passo para resolvê-las, “O que os olhos não veem o coração não sente!”, faz muito sentido aqui, como corrigir ou modificar configurações e aplicações que sequer sabemos que estão com problemas?

Pretendo aqui demonstrar o Zora, a ferramenta Open Source que lançamos no final de 2022 que dá visibilidade sobre seus clusters de forma centralizada, detalha falhas e vulnerabilidades encontradas e exibe ainda documentação específica das issues, auxiliando no direcionamento dos times para correção.