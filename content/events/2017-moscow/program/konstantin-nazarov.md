+++
date = "2016-12-16T14:40:46+03:00"
linktitle = "konstantin-nazarov"
title = "Konstantin Nazarov"
type = "talk"

+++

<div class="span-15  ">
  <div class="span-15  last ">
  <p><strong>Title:</strong>
Building a PaaS with Docker, Consul and Python
</p>

<p><strong>Description:</strong></p>

<p><pre style='white-space: pre-wrap;       /* Since CSS 2.1 */
    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
    white-space: -pre-wrap;      /* Opera 4-6 */
    white-space: -o-pre-wrap;    /* Opera 7 */
    word-wrap: break-word;     '>
I'm currently single-handedly building a Database-As-A-Service platform. And the problem of where and how to run database instances has been successfully solved in favor of Docker. But there still remain 2 problems: how to link containers on different hosts across the network and how to orchestrate a large pool of running instances.

You may find lots of different IaaS offerings and schedulers like Mesos and Kubernetes on the market, but all of them have a steep learning curve. Plus they don't handle stateful and non-SOA services very well.

In this talk I'll be walking you over how one can build a simple PaaS based on Docker, consul and a custom orchestration service in Python. My experience in building such system shows that it can be reproduced by the effort of one developer.

A list of topics I will cover:
- Consul as a reliable distributed storage
- Connecting containers between hosts without an overlay network
- Allocating IP addresses and maintaining their pool in Consul KV
- Correctly registering services and health checks
- How to approach writing basic orchestrator based on gevent + writing trivial admin UI for it
- Adding failover, scaling and service reallocation to the orchestrator
- Delayed tasks (backup, analytics, etc...)
- Monitoring the system (Consul + Prometheus)

Almost all code of the system, including ansible playbooks, is available on GitHub.
</pre>

</p>
  
  <p><strong>Тема:</strong>
Как сделать PaaS при помощи Docker, Consul и обвязки на Python
</p>

<p><strong>Описание:</strong></p>

<p><pre style='white-space: pre-wrap;       /* Since CSS 2.1 */
    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
    white-space: -pre-wrap;      /* Opera 4-6 */
    white-space: -o-pre-wrap;    /* Opera 7 */
    word-wrap: break-word;     '>
Сейчас я в одиночку работаю над созданием Database-As-A-Service решения. И вопрос "как и где запускать" успешно решился в пользу Docker. Проблемы возникли в двух местах: как соединять контейнеры по сети для репликации данных, и как автоматизированно управлять большим парком запущенных инстансов.

На рынке есть много решений для организации IaaS, и всяких шедулеров вроде Mesos и Kubernetes. Но у всех у них довольно крутой learning curve. К тому же они не очень хорошо работают с сервисами, сдизайненными не по SOA.

В своем докладе я расскажу, как можно сделать (и как я в итоге сделал) для своей компании небольшой PaaS на основе Docker, Consul и обвязки на Python в качестве оркестратора. Это вполне воспроизводимо силами одного человека.

Вот о чем мы поговорим:
- Consul как надежное распределенное хранилище
- Делаем связь контейнеров между хостами без overlay сети
- Выделение IP адресов и организация их пула в Consul KV
- Как правильно регистрировать сервисы и health check-и
- Делаем оркестратор на gevent + простую админку к нему на Flask
- Делаем failover, масштабирование и переезд сервисов
- Отложенные задания (бэкап, аналитика и т.д.)
- И немного про мониторинг всего этого хозяйства (Consul + Prometheus)

Почти весь, включая ansible скрипты, доступен на GitHub.

</pre>
</p>
<p>

  </div>
</div>

