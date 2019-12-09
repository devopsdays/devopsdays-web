+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Além da escuridão: adotando uma cultura de observabilidade no Nubank"
Type = "talk"
Speakers = ["isabella-pimentel", "felipe-lopes"]
+++

No Nubank há um conjunto de microsserviços classificados como horizontais - aqueles que, assim como o serviço de envio de emails, são usados por diversos squads. Porém, por serem usados por muitos times, não eram realmente cuidados por nenhum e por isso acabaram abandonados, se tornando instáveis e perdendo sua confiabilidade.

Para resolver este problema, o Nubank decidiu criar um time especializado em serviços horizontais que os adotaria e daria a eles toda a atenção necessária para que se tornassem confiáveis novamente.

Mas como fazer isso se nós, o novo time, não conhecíamos estes serviços? Não conhecíamos seus comportamentos, seus casos de uso, seus modos de falha e nem o quê, de fato, os deixava tão instáveis. Precisávamos responder essas perguntas para que conseguíssemos melhorá-los, e a adoção de uma cultura de observabilidade foi o que nos ajudou a alcançar as respostas.

No Nubank, usamos ferramentas como Prometheus e Splunk para coleta e análise de métricas, Grafana para visualização de dashboards, Opsgenie e AlertManager para disparo de alertas, entre outros. Com isso, queremos compartilhar o que aprendemos sobre boas práticas de monitoramento, escolha do tipo de métrica ideal para cada cenário e operação de alertas e plantões.

Mas para além da tecnologia por trás da nossa stack de monitoramento, queremos também compartilhar como o forte investimento em observabilidade do nosso time - que começou como uma questão de necessidade e acabou se tornando parte natural e indispensável de cada tarefa que fazemos - nos ajudou a ir além da escuridão e reestabelecer a confiança que a empresa tem nos nossos antes abandonados serviços horizontais
