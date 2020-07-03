+++
date = "2020-06-11T02:11:48-05:00"
description = "Devopsdays is coming to Miami!"
title = "devopsdays Miami 2020"
type = "new-event"
city = "Miami"
year = "2020"
event_twitter = "devopsdaysmiami"
location = "Miami"
organizer_email = "miami@devopsdays.org"
sponsors_accepted = "yes"
sponsor_levels = [
    { id = "gold", label = "Gold" },
    { id = "silver", label = "Silver", max = 0 },
    { id = "bronze", label = "Bronze" },
    { id = "community", label = "Community" },
]
navigation = [
    { name = "sponsor" },
    { name = "contact" },
    { name = "conduct" },
]
+++
<div style="text-align:center;">
  {{< event_logo >}}
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Dates</strong>
  </div>
  <div class = "col-md-8">
    {{< event_start >}} - {{< event_end >}}
  </div>
</div>

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Location</strong>
  </div>
  <div class = "col-md-8">
    {{< event_location >}}
  </div>
</div> -->

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Register</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="registration" text="Register to attend the conference!" >}}
  </div>
</div> -->

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Propose</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="propose" text="Propose a talk!" >}}
  </div>
</div> -->

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Program</strong>
  </div>
  <div class = "col-md-8">
    View the {{< event_link page="program" text="program." >}}
  </div>
</div> -->

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
