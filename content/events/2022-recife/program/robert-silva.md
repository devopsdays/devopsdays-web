
+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Saindo do Shell para o Helm"
Type = "talk"
Speakers = ["robert-silva"]
+++

Nesta palestra irei compartilhar um pouco sobre a mudança o da estrutura de deploy utilizando shell script e muito sed para a utilização do Helm, tornando o ambiente mais padronizado.

Cheguei em um cliente onde tinha um padrão de Deploy, esse padrão era diferente com o que eu estava acostumado por que utilizava Shell script e SED para substituir variáveis. Porém isso me atrapalhava, em alguns serviços eu precisava de novos manifestos para deploy. Decidimos então iniciar a migração dos novos serviços para Helm, vou compartilhar os desafios e cada etapa da criação do Helm e por que como cada decisão foi tomada.