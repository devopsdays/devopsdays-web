+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "PostgreSQL Network Filter for EnvoyProxy"
Type = "talk"
Speakers = ["fabrizio-mello"]
sharing_image = "fabrizio-mello.png"
notist = ""
+++
Como você monitora o Postgres? Que informações você pode obter e em que grau elas ajudam a solucionar problemas operacionais? E se você quiser/precisar registrar todas as consultas? Isso pode derrubar um bancos de dados de tráfego pesado. Na OnGres somos obcecados em melhorar a observabilidade do Postgres, por isso trabalhamos junto com o pessoal da Tetrate desenvolvendo uma extensão de Filtro de Rede do Envoy para Postgres, que estende a observabilidade do tráfego. Ela permite que você capture métricas e depure o tráfego.

Esta palestra será um mergulho técnico na decodificação de protocolo do Postgres, filtros do Envoy e cobrirá recursos, uso e implantação em qualquer ambiente.