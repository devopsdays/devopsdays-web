+++
date = "2020-06-11T02:11:48-05:00"
description = "Celebrating the 5th year anniversary of DevOpsDays in Charlotte!"
title = "devopsdays Charlotte 2020"
type = "new-event"
city = "Charlotte"
year = "2020"
event_twitter = "devopsdays_clt"
startdate = 2020-02-27T00:00:00-05:00
enddate = 2020-02-28T23:59:59-05:00
cfp_date_start = 2019-09-15T00:00:00-05:00
cfp_date_end = 2019-10-30T00:00:00-05:00
cfp_date_announce = 2019-11-10T00:00:00-05:00
cfp_link = "https://www.papercall.io/dod-clt-2020"
registration_date_start = 2019-09-15T00:00:00-04:00
registration_date_end = 2020-02-26T23:59:59-05:00
location = "Charlotte - Red Ventures Auditorium"
location_address = "1101 Red Ventures Drive, Indian Land, SC 29707"
organizer_email = "charlotte@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "platinum", label = "Platinum" },
    { id = "gold", label = "Gold", max = 0 },
    { id = "silver", label = "Silver" },
    { id = "community", label = "Community" },
]
sponsors = [
    { name = "red-ventures", level = "gold" },
    { name = "f5-nginx", level = "gold" },
    { name = "launch-darkly", level = "gold" },
    { name = "virtru", level = "gold" },
    { name = "influxdata", level = "gold" },
    { name = "appdynamics", level = "gold" },
    { name = "gitlab", level = "gold" },
    { name = "instana", level = "gold" },
    { name = "newrelic", level = "gold" },
    { name = "site24x7", level = "gold" },
    { name = "sonatype", level = "gold" },
    { name = "paloaltonetworks", level = "gold" },
    { name = "mattermost", level = "gold" },
    { name = "hcl", level = "silver" },
    { name = "delphix", level = "silver" },
    { name = "rancher", level = "silver" },
    { name = "eliassen-group", level = "silver" },
    { name = "arresteddevops", level = "community" },
    { name = "manning", level = "community" },
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
