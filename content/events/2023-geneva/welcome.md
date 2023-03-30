+++
Title = "DevopsDays Geneva 2023"
Type = "welcome"
aliases = ["/events/2023-geneva/"]
Description = "DevopsDays Geneva 2023"
+++
<style>
  .content-text {
    width: 100%;
    max-width: 80%;
    margin: 0 auto;
  }

  .text {
    padding: 1rem;
    width: 50%;
    box-sizing: border-box;
    min-width: 20rem;
    flex-grow: 10;
  }

  .text h2 {
    margin-bottom: 2rem;
  }
  
  div.sponsor-row img.img-fluid{
    max-height: 80px;
  }
</style>

<div style='width:100%;text-align:center;margin-bottom:2rem;'>
  <img alt="DevOpsDays Geneva 2023" src="/events/2023-geneva/banner.png" style="max-width:100%;margin-right:auto;margin-left: auto;"/>
</div>

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

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Register</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="registration" text="Register to attend the conference!" >}}
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

<div class = "row">
  <div class = "col-md-2">
    <strong>Speakers</strong>
  </div>
  <div class = "col-md-8">
    Check out the {{< event_link page="speakers" text="speakers!" >}}
  </div>
</div>
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
    <strong>Newsletter</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="newsletter" text="Subscribe to our newsletter for the next news !" >}}
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

<br />
{{< event_twitter >}}