+++
City = "NewYork"
Year ="2016"
date = "2016-03-06T21:15:25-06:00"
title = "welcome"
type = "event"
aliases = ["/events/2016-newyork"]


+++
<center>
<img src='/img/nyc-workers.png'>
<h4>We're in this together</h4>

<h2>{{< event_start >}} - {{< event_end >}}</h2>

DevOps Days is coming to New York.
</center>

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
  	<a href="https://www.eventbrite.com/e/devopsdays-new-york-2016-tickets-25887868311">Register to attend the event!</a>
	</div>
</div>

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
    {{< event_link page="sponsor" text="Sponsor the event!" >}} It's a great way to attract new talent and promote your organization.
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Contact</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="contact" text="Get in touch with the Organizers" >}}
  </div>
</div>

{{< event_twitter devopsdaysNYC >}} <!-- add your twitter name here without the @ sign -->
