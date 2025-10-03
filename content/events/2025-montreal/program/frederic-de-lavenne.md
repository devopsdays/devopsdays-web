+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "EKS auto-scalable avec Terraform, Helm et Karpenter – Démo d’un cluster intelligent"
Type = "talk"
Speakers = ["frederic-de-lavenne"]
+++

Comment déployer un cluster EKS capable de s’adapter intelligemment à la charge, sans Auto Scaling Group classique ?
Dans cette session, nous verrons comment créer un vpc et un cluster Kubernetes avec Terraform, puis comment intégrer et configurer Karpenter via Helm.

L’objectif : automatiser entièrement le dimensionnement de l’infrastructure. Grâce à Karpenter, les nœuds du cluster s’ajustent dynamiquement aux besoins des workloads, en temps réel, pour un environnement réellement scalable et prêt pour la production.

Nous parlerons d’Infrastructure as Code, d’autoscaling intelligent, et je vous montrerai comment intégrer cette architecture dans un pipeline CI/CD pour un déploiement fluide et reproductible.