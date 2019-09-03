+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Déployer Vault et Consul sur Kubernetes"
Type = "talk"
Speakers = ["vincent-sevel"]
+++

Les enjeux de Kubernetes dépassent largement le cadre feutré du déploiement des applications stateless 12 factors. A travers sa versatilité, Kubernetes s’affirme de manière croissante comme la plateforme universelle de déploiement.

Kubernetes peut donc être utilisé pour déployer vos composants applicatifs, mais également les technologies d’infrastructure qui les soutiennent, y compris quand ces technologies ont été conçues avant l’émergence de Kubernetes.

L’exercice d’intégration d’une technologie legacy dans Kubernetes est intéressant pour 2 raisons :

- La première est purement pédagogique : en se confrontant à l’intégration d’une technologie on est forcé de se poser les bonnes questions, d'appréhender les concepts et la philosophie du produit, de comprendre les options à disposition et leurs limites. On ressort de l’exercice avec quelques bleus, mais surtout une connaissance accrue de la plateforme qui sera utile pour les intégrations futures d’applications legacy.
- La deuxième est pragmatique et utilitaire : l’intégration d’une technologie tierce dans Kubernetes offre une opportunité de réduire l’empreinte des intégrations sur mesure dans le système d’information et amène en même temps tous les avantages de Kubernetes en terme d’administrabilité : infrastructure as code, 'desired state', cycle de vie, surveillance, …

Dans cette présentation nous prendrons l’exemple spécifique des technologies HashiCorp Vault & Consul et montrerons comment elles peuvent s’intégrer dans une environnement Kubernetes. Nous évaluerons plusieurs aspects comme le stateful, l’exposition, la haute disponibilité, la sécurisation et la surveillance.
A la fin de l'exercice, nous aurons une solution prod-ready, mais surtout nous aurons acquis une expérience et une connaissance qui nous sera utile pour continuer sur le chemin de l’adoption de Kubernetes.
