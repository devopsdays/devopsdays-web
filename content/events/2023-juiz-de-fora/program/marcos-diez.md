+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Gerenciando Kubernetes com Terraform e as vantagens de não utilizar o helm"
Type = "talk"
Speakers = ["marcos-diez"]
+++

Como alternativa ao helm, vou mostrar o terraform-k8s-provider, que tem as seguintes vantagens:

- é possível ver o que será modificado no seu cluster antes da modificação ocorrer
- é trivial de integrar com outros providers como o terraform-aws-provider, azure e google
- a sintaxe do terraform é mais limpa e pode ser verificada com `terraform validate`, coisa que no helm é muito mais difícil (porém factível)
- quanto mais objetos serem gerados pelo terraform, menos permissões e providers seu cluster k8s irá precisar. Mais simples e mais seguro.
