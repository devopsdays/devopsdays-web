+++
date = "2020-06-11T02:11:48-05:00"
description = "Devopsdays is coming to Oslo!"
title = "devopsdays Oslo 2019"
type = "new-event"
city = "Oslo"
year = "2019"
event_twitter = "devopsdaysoslo"
startdate = 2019-10-22T00:00:00+02:00
enddate = 2019-10-23T23:59:59+02:00
cfp_date_start = 2019-03-20T12:00:00
cfp_date_end = 2019-09-01T23:59:59
cfp_date_announce = 2019-09-07T00:00:00
cfp_link = "https://sessionize.com/devopsdays-oslo-2019/"
registration_date_start = 2019-06-28T00:00:00+02:00
registration_date_end = 2019-10-22T00:00:00+02:00
coordinates = "59.911057,  10.740069"
location = "Sentralen, Oslo"
location_address = "Sentralen, Øvre Slottsgate 3, 0157 Oslo"
organizer_email = "organizers-oslo-2019@devopsdays.org"
proposal_email = "proposals-oslo-2019@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "partner", label = "Gold", max = 12 },
    { id = "community", label = "Community" },
]
sponsors = [
    { name = "bekk", level = "partner" },
    { name = "finn", level = "partner" },
    { name = "cgi", level = "partner" },
    { name = "gitlab", level = "partner" },
    { name = "entur", level = "partner" },
    { name = "praqma", level = "partner" },
    { name = "xebialabs", level = "partner" },
    { name = "enonic", level = "partner" },
    { name = "techwomenno", level = "partner" },
    { name = "microsoft", level = "community" },
    { name = "capra", level = "community" },
]
navigation = [
    { name = "location" },
    { name = "program" },
    { name = "speakers" },
    { name = "sponsor" },
    { name = "contact" },
    { name = "conduct" },
]
+++
<div class="row">
  <div class="col-md-4 push-md-2">
    <img alt="DevOpsDays Oslo 2019" src="/events/2019/oslo/logo.png" class="img-fluid">
  </div>
  <div class="col-md-6 push-md-2" style="display: flex; align-items: center; flex-direction: row;">
    <div class="col-md-12">
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Dates</strong>
        </div>
        <div class="col-md-12">
          {{< event_start >}} - {{< event_end >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Location</strong>
        </div>
        <div class="col-md-12">
          {{< event_location >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Register</strong>
        </div>
        <div class="col-md-12">
          {{< event_link url-key="registration_link" text="Register to attend the conference!" >}}
        </div>
      </div>
      <!-- <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Propose</strong>
        </div>
        <div class="col-md-12">
          {{< event_link url-key="cfp_link" text="Propose a talk!" >}}
        </div>
      </div> -->
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Program</strong>
        </div>
        <div class="col-md-12">
          {{< event_link page="program" text="View the program!" >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Sponsors</strong>
        </div>
        <div class="col-md-12">
          {{< event_link page="sponsor" text="Sponsor the conference!" >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Contact</strong>
        </div>
        <div class="col-md-12">
          {{< event_link page="contact" text="Get in touch with the organizers" >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Twitter</strong>
        </div>
        <div class="col-md-12">
          {{< event_twitter >}}
        </div>
      </div>
    </div>
  </div>
</div>
