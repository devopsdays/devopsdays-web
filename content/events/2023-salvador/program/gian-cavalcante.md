+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Desmistificando RBAC no K8s"
Type = "talk"
Speakers = ["gian-cavalcante"]
youtube = ""
slideshare = ""
slides = ""
twitter = "gianlcl"
+++

O que é RBAC? Como ele funciona? Como exportar e usar uma credencial? E dicas de como escrever suas Roles no Kubernetes. Essas e outras perguntas vão ser respondidas durante a palestra. O apelo da palestra é como usar o kubectl para descobrir os nomes dos recursos e seus verbos direto da API interna

Os tópicos abordados na palestra serão explicar para iniciantes ou mesmo pessoas que já utilizam kubernetes a algum tempo, mas nunca mexeram com rbac, como funciona o recurso e tentar tirar essa impressão de "bicho de sete cabeças" do RBAC. Meu objetivo é semear o interesse da audiência por estudar mais sobre o recurso e até mesmo sair querendo implementar. Vou abordar desde o início explicando o que significa RBAC, e também os recursos envolvidos (Role, ClusterRole, RoleBinding, etc), e ao fim ensinar como utilizar um recurso pouco falado do kubectl que é o parâmetro --raw que traz uma saída crua da API do kubernetes onde é possível visualizar tudo sobre a definição dos recursos do kubernetes, entre outras coisas. Com o kubectl get --raw é possível visualizar dentro do apigroup de um recurso todos os verbos que ele aceita além do nome de seus sub-recursos. Essa informação de quais os sub-recursos de um recurso é algo que precisei pesquisar muito para descobrir e foi o principal motivador para eu escrever essa palestra. Com essas informações é possível criar regras de permissionamento muito específicas, como conceder acesso a ler os logs de um pod sem dar acesso a fazer um exec para dentro dele, por exemplo.
