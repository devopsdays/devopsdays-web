+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Infraestrutura declarativa e GitOps - da teoria à prática"
Type = "talk"
Speakers = ["renato-nascimento", "gabriel-mendes"]
+++

Ferramentas de infraestrutura declarativa nunca foram tão populares. Terraform e AWS CloudFormation, por exemplo, permitem que você especifique qual é o estado desejado, e um processo automatizado realiza os passos necessários para que o estado em produção reflita a especificação.

Infra declarativa também é a base da configuração da ferramenta mais popular de orquestração de containers hoje: o Kubernetes. E através da comunidade do Kubernetes que um novo padrão, chamado de GitOps, surgiu e têm-se mostrado promissor.

Essa metodologia torna o Git a ‘fonte de verdade’ sobre a infraestrutura que queremos entregar, e utiliza um agente automatizado para se certificar que esse estado continua refletido em produção, realizando a entrega contínua (CD) dos manifestos.

Ter o Git no centro da pipeline de entrega permite que os desenvolvedores possam realizar alterações nas suas aplicações de maneira muito familiar, através de pull requests, e que as mudanças sejam automaticamente espelhadas na cloud pela ferramenta de entrega contínua. Temos também o histórico de toda a configuração daquela aplicação no Git, além de fortes garantias de segurança durante todo o processo.

Nesta talk, iremos abordar como integramos o Git, Argo CD e Terraform para tornar fácil o provisionamento de clusters prontos para produção e também a entrega contínua de aplicações no Kubernetes.
