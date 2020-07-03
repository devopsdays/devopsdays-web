+++
date = "2020-06-11T02:11:48-05:00"
description = "Devopsdays is coming back to Charlotte!"
title = "devopsdays Charlotte 2019"
type = "new-event"
city = "Charlotte"
year = "2019"
event_twitter = "devopsdays_clt"
startdate = 2019-02-07T00:00:00-05:00
enddate = 2019-02-08T23:59:59-05:00
cfp_date_start = 2018-10-13T00:00:00-05:00
cfp_date_end = 2018-11-25T10:11:00-05:00
cfp_date_announce = 2018-12-05T00:00:00-05:00
cfp_link = "https://papercall.io/dodclt2019"
registration_date_start = 2018-10-13T00:00:00-04:00
registration_date_end = 2019-02-06T23:59:59-05:00
registration_link = "https://www.eventbrite.com/e/devopsdays-charlotte-2019-tickets-51363183665"
location = "Charlotte - Red Ventures Auditorium"
location_address = "1101 Red Ventures Drive, Indian Land, SC 29707"
organizer_email = "organizers-charlotte-2019@devopsdays.org"
proposal_email = "proposals-charlotte-2019@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "gold", label = "Gold" },
    { id = "silver", label = "Silver", max = 0 },
    { id = "bronze", label = "Bronze" },
    { id = "community", label = "Community" },
]
sponsors = [
    { name = "rundeck", level = "gold" },
    { name = "gitlab", level = "silver" },
    { name = "red-ventures", level = "gold" },
    { name = "victorops", level = "gold" },
    { name = "signalfx", level = "silver" },
    { name = "diamanti", level = "gold" },
    { name = "influxdata", level = "gold" },
    { name = "sumologic", level = "gold" },
    { name = "vividcortex", level = "silver" },
    { name = "dynatrace", level = "gold" },
    { name = "softed", level = "silver" },
    { name = "sonatype-before-20190405", level = "gold" },
    { name = "mongodb", level = "bronze" },
    { name = "redhat-before-20190528", level = "gold" },
    { name = "cloudbees-codeship", level = "bronze" },
    { name = "servicenow", level = "silver" },
    { name = "jfrog", level = "silver" },
    { name = "ahead-appdynamics", level = "gold" },
]
navigation = [
    { name = "location" },
    { name = "registration" },
    { name = "program" },
    { name = "sponsor" },
    { name = "contact" },
    { name = "conduct" },
]
+++
<!-- <div style="text-align:center;">
  {{< event_logo >}}
</div> -->

<div class = "row">
  <div class = "col-md-2">
    <strong>Dates</strong>
  </div>
  <div class = "col-md-8">
    {{< event_start >}} - {{< event_end >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Location</strong>
  </div>
  <div class = "col-md-8">
    {{< event_location >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Register</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="registration" text="Register to attend the conference!" >}}
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
    <strong>Program</strong>
  </div>
  <div class = "col-md-8">
    View the {{< event_link page="program" text="program." >}}
  </div>
</div>

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Speakers</strong>
  </div>
  <div class = "col-md-8">
    Check out the {{< event_link page="speakers" text="speakers!" >}}
  </div>
</div> -->

<div class = "row">
  <div class = "col-md-2">
    <strong>Sponsors</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="sponsor" text="Sponsor the conference!" >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Contact</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="contact" text="Get in touch with the organizers" >}}
  </div>
</div>

<!-- Uncomment if you added your city twitter name -->

{{< event_twitter >}}
