+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Do Rancher ao GitOps, melhorando o fluxo dos Devs."
Type = "talk"
Speakers = ["robert-silva"]
+++

Após migração para o Kubernetes o time de Desenvolvimento definiu um processo de deploy que possuia muitas ações manuais, após a implementação do GItOps com Gitlab, Helm e ArgoCD o processo ficou 100% automatizado e sem a necessidade de criar os objetos do K8S manualmente.

Uma evolução da palestra apresentada no DevOps Days Rio e Recife de 2022. Iniciamos um projeto onde os desenvolvedores que estavam sendo responsáveis por fazer o deploy das aplicações no Kubernetes. Além da dificuldade em criar os manifestos, não existia um processo continuo para Deploy. Cada vez que era feito o novo build de uma imagem o time de dev acessava o rancher para editar o deployment já existente e alterar a imagem, após a implementação do Gitops com Gitlab, Helm e ArgoCD todo o processo de deploy foi automatizado 100%.