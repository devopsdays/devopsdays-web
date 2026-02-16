+++
Title = "DevOpsDays Geneva 2026"
Type = "welcome"
aliases = ["/events/2026-geneva/"]
Description = "DevOpsDays Geneva 2026"
+++
<style>
  .welcome-page-masthead {
    font-size: +1em;
  }
  .welcome-page-date {
    font-weight: 700;
  }
  .welcome-page-masthead-venue {
    font-weight: 600;
  }
  .e-summary {
    font-size: +1em;
    font-weight: 700;
  } 
  a.p-location, a.p-location:hover, a.p-location:active {
    font-weight: 600;
    color: #fff;
  }
  a.jssocials-share-link, a.event-cta-button {
    background-color: #ED1C24;
  }

  .content-text {
    width: 100%;
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
    max-height: 70px;
  }
</style>

<div class="row">
    <div class="col-md-12">
      <div class="row justify-content-center">
        <div class="d-flex p-2">
          <a class="btn btn-primary btn-block"
            style="margin-top: 15px; margin-bottom: 15px; background-color: #ED1C24; border-color: #ED1C24;"
            href="/events/2026-geneva/registration">
            <i class="fa fa-ticket fa-lg"></i>&nbsp;&nbsp;&nbsp;Register to attend the conference
          </a>
        </div>
        <div class="d-flex p-2">
          <a class="btn btn-primary btn-block"
            style="margin-top: 15px; margin-bottom: 15px; background-color: #ED1C24; border-color: #ED1C24;"
            href="/events/2026-geneva/sponsor">
            <i class="fa fa-handshake fa-lg"></i>&nbsp;&nbsp;&nbsp;Sponsor the conference</a>
        </div>
      </div>
    </div>
</div>

<div class = "row">
<div class = "col-md-8">
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
</div>
<div class = "col-md-4">
<div style="text-align:center">
  {{< event_logo >}}
</div>
</div>
</div>

<!-- Uncomment if you added your city twitter name -->
<!--
{{< event_twitter >}}
-->
