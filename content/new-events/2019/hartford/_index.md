+++
date = "2020-06-11T02:11:48-05:00"
description = "DevOpsDays Hartford is back at Infinity Hall for 2019!"
title = "devopsdays Hartford 2019"
type = "new-event"
city = "Hartford"
year = "2019"
event_twitter = "devopsdayshfd"
startdate = 2019-10-02T00:00:00-04:00
enddate = 2019-10-03T23:59:59-04:00
cfp_date_start = 2019-03-28T00:00:00-04:00
cfp_date_end = 2019-08-05T00:00:00-04:00
cfp_link = "https://devopsdayshfd.org/cfp"
registration_date_start = 2019-04-26T00:00:00-04:00
registration_date_end = 2019-10-03T00:00:00-04:00
registration_link = "https://devopsdayshfd.org/registration"
sharing_image = "sharing.jpg"
coordinates = "41.762842,-72.6709113"
location = "Infinity Music Hall & Bistro"
location_address = "32 Front St. Hartford, CT 06103"
organizer_email = "organizers-hartford-2019@devopsdays.org"
proposal_email = "proposals-hartford-2019@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "gold", label = "Gold" },
    { id = "silver", label = "Silver", max = 0 },
    { id = "bronze", label = "Bronze" },
    { id = "community", label = "Community" },
]
sponsors = [
    { name = "gitlab", level = "gold", url = "https://about.gitlab.com" },
    { name = "xmatters", level = "gold" },
    { name = "travelers", level = "gold" },
    { name = "dynatrace", level = "silver" },
    { name = "eliassen-group", level = "silver" },
    { name = "compuware", level = "silver" },
    { name = "signalfx", level = "silver" },
    { name = "microsoft", level = "silver" },
    { name = "tasktop", level = "silver" },
    { name = "cgi", level = "bronze" },
    { name = "arresteddevops", level = "community" },
    { name = "newhavenio", level = "community" },
    { name = "upward-hartford", level = "community" },
]
navigation = [
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
    <img alt="DevOpsDays Hartford 2019" src="/events/2019/hartford/logo.png" class="img-fluid">
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
