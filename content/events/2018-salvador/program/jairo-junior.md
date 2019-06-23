+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Automatizando estratégias de deployment com Ansible"
Type = "talk"
Speakers = ["jairo-junior"]
Slides = ""
+++

Em uma estratégia de release, independente da tecnologia utilizada, uma série de tarefas precisam ser mapeadas: como implantar a aplicação/voltar atrás em caso de falha, reconstruir estado após uma atualização, verificar se aplicação está apta a receber requisições, migrações de dados e etc

Mapear estas tarefas é apenas parte do problema, automatizá-las de forma que fiquem aderentes aos princípios de Infrastructure as Code (execução não assistida, declarativo, parametrizável, reusável, versionável) para transformar estes passos em uma rotina ao mesmo tempo executável e legível para seres humanos é o grande desafio.

Se seu workload está pronto para containers você pode facilmente se beneficiar de diferentes estratégias de deployment: Blue/Green, A/B, Canary deployment. Mas como utilizá-las para o legado (não cloud-native)? Como implementar playbooks Ansible para cada uma destas abordagem? Do que preciso?
