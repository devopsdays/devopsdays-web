+++
Talk_date = "2022-11-11"
Talk_start_time = "13:30"
Talk_end_time = "13:25"
Title = "Helm e Django: Escrevendo configurações com Segurança"
Type = "talk"
Speakers = ["augusto-ribeiro"]
+++
A talk abordará como o empacotamento em chart Helm de um aplicação desenvolvida com framework django pode contribuir para a escrita do arquivo settings.py apenas em tempo de deploy, não sendo necessário se quer o versionamento desse arquivo em um SCM (git). Deve-se lembrar que é uma boa prática de segurança em desenvolvimento não versionar esse arquivo, que possui informações que quando expostas, podem comprometer a segurança da informação.

Utilizando template de secret , é possível escrever informações sensíveis do arquivo settings.py e construir todo o conteúdo desse arquivo apenas durante a implantação (deploy). Isso é graças ao desenvolvimento de um chart Helm voltado para tal finalidade. Apenas durante o deploy, serão injetadas informações sensíveis a partir de variáveis, seja em um ambiente shell ou mesmo em uma ferramenta de pipeline, como por exemplo, o GitHub Actions.
