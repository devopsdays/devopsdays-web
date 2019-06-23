+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Automação de Access Control Lists através de Redes Definidas por Software"
Type = "talk"
Speakers = ["gustavo-pantuza"]
youtube = "NTN_G_RyLeA"
slideshare = ""
slides = "https://assets.devopsdays.org/events/2018/saopaulo/presentations/Gustavo_Pantuza_-_Automacao_de_ACLS_atraves_de_SDN.pdf"
+++

Imagine garantir a liberação de acessos entre aplicações e serviços de forma automatizada e de baixo custo. Essa palestra apresentará como estruturamos a Cloud da Globo.com e como através da GloboNetworkAPI, OpenDaylight e Open vSwitch conseguimos implementar uma solução automatizada em SDN.

No datacenter da Globo.com temos um problema ao configurar ACLs em nossos Switches topo de rack. As ACL são escritas em uma memória especializada chamada TCAM. Essas memórias são muito pequenas e muito caras. Além disso os fabricantes de hardware de telecom não conseguem entregar um equipamento com grandes volumes dessa memória. Em média, os equipamentos disponibilizam cerca de 2 Kb dessa memória.

Na Globo.com temos cerca 50 K ACLs. Elas não cabem nas memórias desses equipamentos. A consequência disso é que sempre perdemos algumas ACLs ou temos que criar ACLs mais genéricas; o que reduz a segurança.

Em função desse problema implementamos uma solução baseada em Redes Definidas por Software que suportasse todo o volume de ACLs assim como fazer isso de forma automatizada e sistêmica. Nessa solução utilizamos uma stack toda em software livre: a GloboNetworkAPI [1], o OpenDaylight [2] e o Open vSwitch [3] como ferramentas.

Essa palestra irá apresentar toda a estrutura da cloud da Globo.com dentro do Datacenter. Na sequência apresentar o problema dentro dessa infraestrutura. Em seguida aprofundar nos detalhes da arquitetura e da implementação da solução SDN. Ao final estatísticas da solução serão apresentadas como métricas da eficiência da solução.

[1] GloboNetworkAPI https://github.com/globocom/GloboNetworkAPI 
[2] OpenDaylight https://www.opendaylight.org/ 
[3] Open vSwitch http://www.openvswitch.org/
