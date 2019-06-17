+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Canary Release no Kubernetes utilizando Istio service mesh"
Type = "talk"
Speakers = ["daniel-requena"]
youtube = ""
slideshare = ""
slides = "https://speakerdeck.com/drequena/canary-release-com-kubernetes-e-istio"
+++

O Kubernetes suporta algumas técnicas de Deploy nativas,mas nenhuma delas dá o poder e abre tantas possibilidades como o Istio faz.Nessa talk falarei como fazer Canary Release utilizando Istio, entenderemos sua arquitetura e entraremos em tópicos como gerenciamento de tráfego, fault injection e mais.

Com o estabelecimento do Kubernetes como padrão de fato para orquestração de containers e a adoção da arquitetura de micro-serviços ganhando cada dia mais adeptos, tópicos como: Estratégias de Deploy, Gerenciamento de tráfego, Observabilidade, Segurança, Fault Injection, e ainda outros, entraram no radar de indivíduos e empresa que estão enfrentando os desafios de gerenciar uma grande quantidade de micro-serviços em produção. A solução atual para esses desafios está nas plataformas de Service Mesh. Uma camada de infraestrutura configurável que ajuda no gerenciamento e comunicação entre os micro-serviços, sem a necessidade de qualquer alteração no código da aplicação. Isso é feito, na maioria das vezes, injetando um proxy transparente junto de cada micro-serviço que intercepta, gerencia, metrifica e até altera o tráfego de entrada e saída dessas aplicações. 


Istio é a solução de Service Mesh mais poderosa e cobiçada da atualidade. Com suporte nativo ao Kubernetes (mas não somente), ele ataca problemas de Observabilidade de comunicação entre micro-serviços, Segurança (com políticas de acesso, criptografia, autorização e autenticação), Gerenciamento de tráfego, ingestão de tráfego para falhas e muitos outros. Tenho experiência prática com o Istio, com ele implantado em clientes principalmente para telemetria de aplicações e gerenciamento de tráfego. O objetivo da Talk é que os participantes saiam dela sabendo: Técnicas de Deploy suportadas pelo Kubernetes nativamente, O que é service Mesh e o Istio, Como instalar o Istio, como preparar sua aplicação para funcionar corretamente no istio, como gerenciar o tráfego com o Istio, como fazer o Canary Release com o Istio, como injetar falhas propositais entre os micro-serviços com o Istio.