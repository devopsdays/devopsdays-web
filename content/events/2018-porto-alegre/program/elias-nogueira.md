+++
Talk_date = "2018-09-15"
Talk_start_time = "13:50"
Talk_end_time = "14:05"
Title = "Provisionar ambientes para teste automatizado web com containers"
Type = "talk"
Speakers = ["elias-nogueira"]
Slides = "https://www.slideshare.net/elias.nogueira/como-criar-e-executar-testes-paralelos-web-usando-selenium-e-containers"
+++

Você já deve ter sofrido ou estar sofrendo pela demora na execução dos testes automatizados web.
Há alternativas que tornam possível a execução do teste em paralelo e a orquestração através de containers.
Venha visualizar uma solução que já está sendo aplicada em times que tem este problema.

É muito comum os testes automatizados web serem os mais demorados e causarem uma grande demora do feedback sobre a qualidade da aplicação em nossa pipeline. Mesmo com o paralelismo dos testes a questão _ambiente para execução_ ainda é um problema...
Na verdade era: podemos, através de containers, auto-escalar cada um deles ou pela demanda de execução ou pelo clássico uso de recursos do container.

O intuito da palestra é mostrar que:

 * sem teste paralelo não é possível ter um rápido feedback
 * que existem soluções prontas (containers) para fazer o auto-scaling e trazer outras funcionalidades

Os participantes terão os seguintes benefícios:

 * Aprender como criar a abordagem de paralelismo no teste
 * Aprender quais containers prontos podem ajudar no paralelismo
 * Aprender quais containers prontos já provem o auto-scaling

A palestra pretende mostras poucos slides, apenas os de conceituação da solução, e depois mostrar efetivamente um pipeline rodando com o auto-scaling.

Ferramentas e linguagens que serão utilizadas:

 * Selenium WebDriver para prover a execução dos testes automatizados web
 * Linguagem de programação Java (mas qualquer linguagem pode ser aplicada)
 * Containers selenium-*, elgalu e zalenium
