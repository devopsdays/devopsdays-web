+++
date = "2020-06-11T02:11:48-05:00"
description = "A revolução já começou!"
title = "devopsdays Florianópolis 2018"
type = "new-event"
city = "Florianópolis"
year = "2018"
event_twitter = "devopsdaysfln"
startdate = 2018-11-24T00:00:00-02:00
enddate = 2018-11-24T23:59:59-02:00
cfp_date_start = 2018-09-01T00:00:00-03:00
cfp_date_end = 2018-10-24T23:59:59-03:00
cfp_date_announce = 2018-11-01T23:59:59-03:00
cfp_link = "https://www.papercall.io/devopsdays-fln-2018"
registration_date_start = 2018-09-01T00:00:00-03:00
registration_date_end = 2018-11-20T23:59:59-03:00
registration_link = "https://www.sympla.com.br/devopsdays-florianopolis---2018__356131"
coordinates = "-27.4306442, -48.4429707"
location = "Auditório da Softplan"
location_address = "Sapiens Parque - Av. Luiz Boiteux Piazza, 1302 - Cachoeira do Bom Jesus, Florianópolis - SC, 88056-000"
organizer_email = "organizers-floripa-2018@devopsdays.org"
proposal_email = "proposals-floripa-2018@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "platinum", label = "Platinum", max = 1 },
    { id = "gold", label = "Gold", max = 2 },
    { id = "silver", label = "Silver", max = 3 },
    { id = "bronze", label = "Bronze" },
    { id = "community", label = "Community" },
    { id = "support", label = "Support" },
]
sponsors = [
    { name = "sudocast", level = "community" },
    { name = "infoqbr", level = "support" },
    { name = "softplan", level = "platinum" },
    { name = "bry", level = "silver" },
    { name = "geekhunterbr", level = "silver" },
    { name = "adaptnow", level = "silver" },
    { name = "totalvoice", level = "bronze" },
]
navigation = [
    { name = "local", url = "/events/2018-florianopolis/location" },
    { name = "ingressos", url = "/events/2018-florianopolis/registration" },
    { name = "programação", url = "/events/2018-florianopolis/program" },
    { name = "palestrantes", url = "/events/2018-florianopolis/speakers" },
    { name = "patrocínio", url = "/events/2018-florianopolis/sponsor" },
    { name = "contato", url = "/events/2018-florianopolis/contact" },
    { name = "código de conduta", url = "/events/2018-florianopolis/conduct" },
]
+++
<div style="text-align:center;">
  {{< event_logo >}}
</div>

<hr />

<div class = "row">
  <div class = "col-md-2">
    <strong>Datas</strong>
  </div>
  <div class = "col-md-8">
    {{< event_start >}} - {{< event_end >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Local</strong>
  </div>
  <div class = "col-md-8">
    {{< event_location >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Ingressos</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="registration" text="Obtenha seu ingresso!" >}}
  </div>
</div>

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Propose</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="propose" text="Propose a talk!" >}}
  </div>
</div> -->

<div class = "row">
  <div class = "col-md-2">
    <strong>Programação</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="program" text="Veja a nossa programação." >}}
  </div>
</div>

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Palestrantes</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="speakers" text="Veja os nossos palestrantes!" >}}
  </div>
</div> -->

<div class = "row">
  <div class = "col-md-2">
    <strong>Patrocinio</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="sponsor" text="Patrocine o evento!" >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Contato</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="contact" text="Entre em contato com os organizadores" >}}
  </div>
</div>

<!-- Uncomment if you added your city twitter name -->
{{< event_twitter >}}
