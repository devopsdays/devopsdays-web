+++
date = "2016-12-16T14:40:46+03:00"
linktitle = "anton-ivanov"
title = "Anton Ivanov"
type = "talk"

+++

<div class="span-15  ">
  <div class="span-15  last ">
  <p><strong>Title:</strong>
How does the SRE team makes HH stable
</p>

<p><strong>Description:</strong></p>

<p><pre style='white-space: pre-wrap;       /* Since CSS 2.1 */
    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
    white-space: -pre-wrap;      /* Opera 4-6 */
    white-space: -o-pre-wrap;    /* Opera 7 */
    word-wrap: break-word;     '>
HeadHunter is a site, where job seekers find vacancies and employers find employees.
In the daytime we receive 3K requests per second (without static content), that turn into 25K RPS to backends and 50K RPS to databases.
Earlier our uptime could be lower than 99%. Now - it is 99.9% and better.

In the presentation I will describe how do we constantly making the reliability of the site better and better.
Particulary:
- allocation of responsibility between operations, SRE and other teams;
- how do we measure uptime / downtime;
- what do we do when the site is down;
- what tools do we use to quickly find the cause of the downtime;
- how do we stress test production to find bottlenecks.

In order not to be too abstract and boring, I'll explain some particular cases:
- how do we scale database replicas;
- why did we remove PgBouncer (this is a connection pool in front of PostgreSQL);
- why Graylog did not fit for us and how do we search through logs in a much more simple way;
- what problems are there with retries;
- etc.

</pre>

</p>
  
  <p><strong>Тема:</strong>
Как команда SRE делает HeadHunter стабильным 
</p>

<p><strong>Описание:</strong></p>

<p><pre style='white-space: pre-wrap;       /* Since CSS 2.1 */
    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
    white-space: -pre-wrap;      /* Opera 4-6 */
    white-space: -o-pre-wrap;    /* Opera 7 */
    word-wrap: break-word;     '>
HeadHunter - сайт, где соискатели находят работу, а работодатели - сотрудников. 
Днем к нам приходит 3K запросов в секунду (без статики), что превращается в 25K rps к бэкендам и 50K rps к базам данных. 
Раньше стабильность сайта могла быть ниже 99%. Теперь - это 99.9% и лучше.

В докладе расскажу о том, как мы постоянно улучшаем стабильность сайта.
В частности:
- как распределяем ответственность между эксплуатацией, командой SRE и другими командами;
- как мы определяем, когда сайт работает, а когда - нет;
- что делаем, когда сайт лежит;
- какие инструменты используем, чтобы быстро находить причину проблемы;
- как нагружаем продакшн, чтобы заранее выявить узкое место.

Чтобы не было абстрактно и скучно, расскажу о конкретных кейсах:
- как мы масштабировали реплики базы данных;
- почему отказались от PgBouncer (это такой пул соединений перед PostgreSQL);
- почему нам не подошел Graylog, и как мы ищем в логах другим гораздо более простым способом;
- какие проблемы есть с ретраями;
- и др.

</pre>
</p>

  </div>
</div>

