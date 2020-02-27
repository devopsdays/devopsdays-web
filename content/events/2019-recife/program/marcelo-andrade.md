+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Tráfego de entrada em clusters Kubernetes: o desafio Ingress"
Type = "talk"
Speakers = ["marcelo-andrade"]
+++

Kubernetes está em todo lugar! O software é amplamente adotado em ambientes on-premisses e cloud providers. Mas será que todos os aspectos da solução estão em iguais estágios de maturidade?

Projetos indispensáveis para o funcionamento do Kubernetes como ETCD e CNI são considerados como Incubating. pela CNCF. Não é só isso: quem usa está acostumado a passar versões usando seus recursos em apis beta.

Um dos recursos considerados por muitos essenciais para a integração de aplicações com o mundo são os objetos do tipo Ingress, atualmente em v1beta1. Mas a principal dificuldade não é a API ou o objeto em si, e sim os componentes externos que fazem uso destes objetos para garantir o acesso a sistemas, conhecidos como Ingress Controllers.

Aqui apresentamos a experiência com Ingress Controllers no Estaleiro, cluster Kubernetes on-prem do SERPRO.

