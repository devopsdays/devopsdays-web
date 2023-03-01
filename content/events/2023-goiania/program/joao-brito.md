+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Conheça seus clusters Kubernetes como a palma de sua mão"
Type = "talk"
Speakers = ["joao-brito"]
+++

Como garantir a segurança de clusters Kubernetes de forma padronizada e uniforme?

Mesmo após anos no mercado de infra, o Kubernetes permanece sendo um sistema desafiador, repleto de configurações específicas e de componentes auxiliares complexos, como ingress, monitoração e outras ferramentas que muitas vezes necessitam de um time técnico com conhecimento especializado.

Portanto, manter esse ecossistema seguro, nem sempre é uma tarefa trivial.

Depois de anos gerenciando ambientes Kubernetes, reunimos nossos conhecimentos para desenvolver uma ferramenta que escaneia periodicamente clusters em busca de vulnerabilidades e erros de configuração, sendo essa a grande preocupação de mais de 80% das empresas segundo a CNCF. Ter visibilidade sobre esses problemas é o primeiro passo para resolvê-los. Neste caso, ao contrário da máxima popular “O que os olhos não veem, o coração não sente!”, o que os DevOps não veem, pode, sim, ser um grande problema num futuro próximo. Com o Zora, queremos possibilitar a correção e/ou modificação de configurações e aplicações que possam ter problemas até então desconhecidos pelo time.

Gostaria, portanto, de apresentar o Zora, a ferramenta Open Source que lançamos no final de 2022, que fornece uma visão centralizada de seus clusters Kubernetes e de suas respectivas vulnerabilidades e falhas de configuração encontradas durante o scan periódico, com detalhamento ao nível de recursos afetados, e com exibição de documentação confiável para auxiliar o time no entendimento das consequências desse problema, e em alguns casos direcioná-lo para a correção.
