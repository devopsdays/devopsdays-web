+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Credenciais Dinâmicas com Vault"
Type = "talk"
Speakers = ["fernando-barbosa"]
youtube = ""
slideshare = ""
slides = ""
+++

Olá,

No QuintoAndar utilizamos o Vault para gerenciair o acesso de todos nossos engenheiros e aplicações a nossos bancos de dados! Através de regras fáceis de programar, conseguimos limitar quem e quais aplicações tem acesso a cada banco e com que permissões. Além disso, como o Vault gera credências dinâmicas e temporárias, limitamos enormemente nosso risco a vazamentos.

Percebi conversando com muitas pessoas da área que o Vault é uma ferramenta do qual muito se fala, mas que pouquíssimas pessoas utilizam. Me parece que ela traz um grande benefício - segurança - com pouco custo. Quantas empresas e equipes não tem uma senha única de acesso a bancos de dados, compartilhada entre todos, e que ficam impedidas de rotacionar esses valores com a devida frequência devido ao medo de impactar sistemas de produção?

Pretendo fazer algumas demonstrações simples para demonstrar como é fácil, em poucos minutos, integrar uma aplicação com o Vault. Também explicarei como fizemos no QuintoAndar, onde desenvolvemos um sidecar para o Kubernetes que se conecta ao Vault e exporta as credenciais de bancos de dados - e outros segredos - como variáveis de ambiente da aplicação. Com sorte, até lá já conseguiremos disponibilizar esse código como open-source.