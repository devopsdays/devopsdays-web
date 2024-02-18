+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Desafios de Migrar uma Solução em nuvem para K8S"
Type = "talk"
Speakers = ["romulo-cantanhede"]
+++

Sou responsável pela WeboneSystem soluções em TI, e recentemente resolvi adotar o uso do kubernetes para execução da aplicação WBSRad. Porém o caminho não foi simples, e as dores de cabeça durante o processo de migração serviu como lição aprendida. Saindo de uma aplicação que já executava em container, só que com a relação de 1 container para 1 servidor virtual, foi possível passar por diversas situações adversas. Quero apresentar tal caminho, os custos envolvidos, as dificuldades, o processo e mudança de alguns paradigmas. Para a migração foi necessário a otimização dos container, melhor definição das imagens adotadas, mensurar quais os limites necessários para execução dos ambientes, isso tudo através da Amazon AWS, na qual, para cada passo que se dá se faz necessário pagar para tal. Outro ponto que quero apresentar são os melhores caminhos para realizar tal processo e o quão vantajoso foi tal processo, tanto em aprendizado, quanto em buscar as melhores soluções, além disso tudo, visando criar um modelo economicamente viável.
