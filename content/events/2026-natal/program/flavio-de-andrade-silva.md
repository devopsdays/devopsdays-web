+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "A Evolução do Tráfego no Kubernetes: Migrando do Ingress para o Gateway API com Traefik"
Type = "talk"
Speakers = ["flavio-de-andrade-silva"]
+++

O recurso de Ingress do Kubernetes foi fundamental para a exposição de aplicações, mas suas limitações de extensibilidade, o foco quase exclusivo em HTTP/HTTPS e a forte dependência de annotations específicas de cada controller criaram gargalos de padronização e manutenção.

O Gateway API surge como a evolução desse modelo ao oferecer uma abordagem mais estruturada, extensível e orientada a papéis, com recursos nativos para múltiplos protocolos e regras de roteamento mais expressivas.Nesta palestra, serão apresentadas as principais limitações do Ingress clássico e como o Gateway API resolve esses pontos por meio de uma arquitetura baseada em recursos como GatewayClass, Gateway e HTTPRoute.

Também será mostrado como essa abordagem permite separar responsabilidades entre times de infraestrutura e desenvolvimento, aumentando a governança sem perder flexibilidade.Além da parte conceitual, a apresentação abordará recursos nativos como traffic splitting (Canary Deployments), filtros e controle de anexação de rotas, bem como um caso prático de implementação durante uma migração de infraestrutura da AWS para uma VPS na Contabo, utilizando o Traefik como controller compatível com Gateway API.
