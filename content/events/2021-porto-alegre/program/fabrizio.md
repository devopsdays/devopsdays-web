+++
Talk_date = "2021-07-10"
Talk_start_time = "11:45"
Talk_end_time = "12:05"
Title = "PostgreSQL Network Filter for EnvoyProxy"
Type = "talk"
Speakers = ["fabrizio"]
+++

Como você monitora o Postgres? Que informações você pode obter e em que grau elas ajudam a solucionar problemas operacionais? E se você quiser/precisar registrar todas as consultas? Isso pode derrubar um bancos de dados de tráfego pesado. Na OnGres somos obcecados em melhorar a observabilidade do Postgres, por isso trabalhamos junto com o pessoal da Tetrate desenvolvendo uma extensão de Filtro de Rede do Envoy para Postgres, que estende a observabilidade do tráfego. Ela permite que você capture métricas e depure o tráfego.

Esta palestra será um mergulho técnico na decodificação de protocolo do Postgres, filtros do Envoy e cobrirá recursos, uso e implantação em qualquer ambiente.