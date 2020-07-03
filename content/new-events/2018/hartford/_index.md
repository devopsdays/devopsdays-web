+++
date = "2020-06-11T02:11:48-05:00"
description = "Devopsdays is coming to Hartford!"
title = "devopsdays Hartford 2018"
type = "new-event"
city = "Hartford"
year = "2018"
event_twitter = "devopsdayshfd"
startdate = 2018-10-16T00:00:00-04:00
enddate = 2018-10-17T23:59:59-04:00
cfp_date_start = 2018-05-21T00:00:00-04:00
cfp_date_end = 2018-08-03T23:59:59-04:00
cfp_date_announce = 2018-08-17T00:00:00-04:00
registration_date_start = 2018-05-21T00:00:00-04:00
registration_date_end = 2018-10-15T23:59:59-04:00
coordinates = "41.762842,-72.6709113"
location = "Infinity Music Hall & Bistro"
location_address = "32 Front St. Hartford, CT 06103"
organizer_email = "organizers-hartford-2018@devopsdays.org"
proposal_email = "proposals-hartford-2018@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "happyHour", label = "Happy Hour", max = 1 },
    { id = "gold", label = "Gold" },
    { id = "silver", label = "Silver", max = 0 },
    { id = "bronze", label = "Bronze" },
    { id = "mug", label = "Mug", max = 8 },
    { id = "community", label = "Community" },
]
sponsors = [
    { name = "compuware", level = "bronze" },
    { name = "compuware", level = "mug" },
    { name = "sonatype-before-20190121", level = "happyHour" },
    { name = "chef", level = "gold" },
    { name = "rightstar", level = "gold" },
    { name = "elastic", level = "gold" },
    { name = "mesosphere", level = "gold" },
    { name = "launch-darkly", level = "gold" },
    { name = "dynatrace", level = "gold" },
    { name = "parasoft", level = "silver" },
    { name = "rightstar", level = "mug" },
    { name = "launch-darkly", level = "mug" },
    { name = "cgi", level = "bronze" },
    { name = "ctlwv", level = "community" },
]
navigation = [
    { name = "propose" },
    { name = "location" },
    { name = "registration" },
    { name = "program" },
    { name = "speakers" },
    { name = "sponsor" },
    { name = "contact" },
    { name = "conduct" },
]
+++
<div class="row">
  <div class="col-md-4 push-md-2">
    <img alt="DevOpsDays Hartford 2018" src="/events/2018/hartford/logo.png" class="img-fluid">
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
          {{< event_link page="registration" text="Register to attend the conference!" >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Propose</strong>
        </div>
        <div class="col-md-12">
          {{< event_link page="propose" text="Propose a talk!" >}}
        </div>
      </div>
      <div class="row" style="margin-bottom: 1rem;">
        <div class="col-md-12">
          <strong>Program</strong>
        </div>
        <div class="col-md-12">
          View the {{< event_link page="program" text="program." >}}
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
    </div>
  </div>
</div>
