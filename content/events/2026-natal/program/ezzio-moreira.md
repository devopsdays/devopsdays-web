+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Coletar tudo é um erro, como usar OpenTelemetry para reduzir custos sem perder visibilidade"
Type = "talk"
Speakers = ["ezzio-moreira"]
+++

Em ambientes distribuídos, é comum acreditar que coletar toda a telemetria possível é o caminho para uma boa observabilidade. Na prática, essa abordagem gera custos elevados e mais ruído do que valor.

Nesta palestra, compartilho a experiência de um time de plataforma responsável por observabilidade em larga escala, operando centenas de clusters Kubernetes e múltiplas linguagens. Saímos de uma abordagem baseada em coletar todos os traces que rapidamente se mostrou insustentável para uma estratégia de sampling (amostragem) com OpenTelemetry, focada em reduzir volume e custo sem perder visibilidade dos serviços.

Ao longo dessa jornada, enfrentamos desafios que vão desde a definição de estratégias eficazes de sampling até o entendimento dos impactos na análise de traces. Também exploramos o uso de Span Metrics como forma de preservar os quatro Golden Signals (latência, tráfego, erros e saturação), mesmo com a redução da quantidade de dados coletados.
