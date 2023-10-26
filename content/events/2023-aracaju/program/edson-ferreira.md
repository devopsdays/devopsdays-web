+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Uma introdução ao conceito de Política como Código (Policy as a Code)"
Type = "talk"
Speakers = ["edson-ferreira"]
+++

E se as políticas da empresa pudessem ser escritas em transcritas em código e validadas durante execução da esteira de CI/CD? Essa apresentação vai falar um pouco sobre o conceito de policy as a code (políticas como código) mostrando alguns cenários usando principalmente a engine Open Policy Agent.

Políticas são essenciais dentro de uma organização, sejam políticas de segurança, compliance ou mesmo de excelência operacional, mas em um cenário onde a infraestrutura é código e as mudanças são feitas de forma automatizadas como garantir que essas políticas estão sendo seguidas? Essa palestra vai apresentar um pouco do conceito de política como código (policy as a code) e como aplicar no contexto da sua organização.

Além dos conceitos, serão apresentadas ferramentas e uma engine para a escrita das políticas chamada Open Poliy Agent (projeto graduado CNCF), além de alguns exemplos de casos de uso. O foco da apresentação vai ser o uso com código de infraestrutura escrito com Terraform (HCL) e dentro de clusters Kubernetes.

Uma lista, não exaustiva, de tópicos que serão abordados: * conceitos de política * exemplos fluxos de validação de políticas (de forma manual e depois automatizada) * conceitos de política como código * conceitos do Open Policy Agent (arquitetura, linguagem usada para a escrita das políticas) * exemplos de uso * exemplos de ferramentas (conftest, kubewarden, opa gatekeeper, kyverno) * exemplo de cenário de uso (validação de tags e outros)