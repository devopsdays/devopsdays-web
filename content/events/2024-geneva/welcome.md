+++
Title = "DevopsDays Geneva 2024"
Type = "welcome"
aliases = ["/events/2024-geneva/"]
Description = "DevopsDays Geneva 2024"
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
    background-color: #8e44b3;
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
        <iframe width="560" height="315" src="https://www.youtube.com/embed/mTH_w5VbxcU?si=ecq9OpWR_NEnNdwp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    </div>
  </div>
</div>
<div class="row">
    <div class="col-md-12">
      <div class="row justify-content-center">
        <div class="d-flex p-2">
          <a class="btn btn-primary btn-block"
            style="margin-top: 15px; margin-bottom: 15px; background-color: #8e44b3; border-color: #8e44b3;"
            href="https://www.youtube.com/watch?v=mTH_w5VbxcU">
            <i class="fa fa-video fa-lg"></i>&nbsp;&nbsp;DevOpsDays 2024 Video
          </a>
        </div>
      </div>
    </div>
    <div class="col-md-12">
      <div class="row justify-content-center">
        <div class="d-flex p-2">
          <a class="btn btn-primary btn-block"
            style="margin-top: 15px; margin-bottom: 15px; background-color: #8e44b3; border-color: #8e44b3;"
            href="https:/events/2025-geneva">
            <i class="fa fa-hand-point-right fa-lg"></i>&nbsp;&nbsp;DevOpsDays 2025 will come back on the 19th of May !
          </a>
        </div>
      </div>
    </div>
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

<!--
<div class = "row">
  <div class = "col-md-2">
    <strong>Register</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="registration" text="Register to attend the conference!" >}}
  </div>
</div>


<div class = "row">
  <div class = "col-md-2">
    <strong>Propose</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="propose" text="Propose a talk!" >}}
  </div>
</div>
-->
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