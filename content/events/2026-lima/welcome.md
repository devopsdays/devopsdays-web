+++
Title = "devopsdays lima 2026"
Type = "welcome"
aliases = ["/events/2026-lima/"]
Description = "devopsdays lima 2026"
+++
<style>
.welcome-hero-left {
  text-align: left;
}

.welcome-hero-title {
  text-align: center;
}

.welcome-hero-year {
  color: #8C51BF;
  opacity: 0.9;
  font-weight: 700;
}

.welcome-hero-date {
  font-weight: 700;
}

.welcome-hero-logo img {
  max-width: 180px;
  height: auto;
}

.welcome-hero-logo {
  text-align: center;
}

.welcome-hero-earlybird, .welcome-hero-standard, .welcome-hero-late {
  margin-bottom: 0;
  color: #6c757d;
  font-size: 0.95rem;
}

.welcome-hero-cta {
  display: flex;
  flex-direction: column;
  gap: 10px;
  margin: 12px 0;
}

.welcome-hero-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 8px 12px;
  border-radius: 10px;
  background: #8C51BF;
  color: #fff;
  font-weight: 600;
  font-size: 0.95rem;
  text-decoration: none;
  width: 100%;
  max-width: 320px;
  margin: 0 auto;
}

.welcome-hero-btn:focus {
  outline: 2px solid #8C51BF;
  outline-offset: 2px;
}

.welcome-hero-btn:hover,
.welcome-hero-btn:active,
.welcome-hero-btn:focus {
  color: #fff;
  text-decoration: none;
  filter: brightness(0.95);
}

@media (min-width: 576px) {
  .welcome-hero-cta {
    flex-direction: row;
    justify-content: center;
  }

  .welcome-hero-btn {
    width: auto;
    max-width: 240px;
    margin: 0;
    flex: 0 1 240px;
  }
}

a.jssocials-share-link {
  color: #ffffffe7;
  border-color: #ffffffe7;
  background-color: rgba(0, 0, 0, 0);
  z-index: 2;
}

a.jssocials-share-link:hover, a.jssocials-share-link:active {
  border-color: #fff;
  color: #fff;
  background-color: #ffffff20;
}

a.p-location{
  font-weight: 600;
  color: #ffffffdd;
}

a.p-location:hover, a.p-location:active {
  color: #fff;
}

.e-summary {
  font-weight: 500;
}
</style>

<div class="row align-items-start">
  <div class="col-sm-5 p-2 welcome-hero-left">
    <h1 class="welcome-hero-title">Welcome to DevOpsDays Lima! <span class="welcome-hero-year">2026</span></h1>
    <div class="welcome-hero-logo">
      {{< event_logo >}}
    </div>
    <p>DevOpsDays Lima will be coming back to {{< event_location >}} on <strong class="welcome-hero-date">Aug 27-28, 2026</strong>.</p>
    <p>Our mission at DevOpsDays Lima is to drive technological evolution with an event that connects professionals, encourages sharing DevOps knowledge, and strengthens a culture of continuous innovation based on real experiences.</p>
    <div class="welcome-hero-cta">
      <a class="welcome-hero-btn" href="https://devopsdays.pe/#tickets">
        <i class="fa fa-ticket fa-lg" aria-hidden="true"></i>
        <span>Get your ticket</span>
      </a>
      <a class="welcome-hero-btn" href="/events/2026-lima/sponsor">
        <i class="fa fa-handshake-simple fa-lg" aria-hidden="true"></i>
        <span>Sponsor DevOpsDays Lima</span>
      </a>
    </div>
  </div>
  <div class="col-sm-7 text-center p-2">
    <iframe 
      src="https://www.youtube.com/embed/OOYWupGVhqA?autoplay=1&mute=1&playsinline=1" 
      frameborder="0" 
      allow="autoplay; fullscreen; picture-in-picture" 
      allowfullscreen 
      style="width: 100%; height: 300px; max-width: 100%;">
    </iframe>
    <br/>Impressions from 2025
  </div>  
</div>

<div class="row">
  <div class="col-md-12">
    <p>
    <p>First time here? Check out our last events and get hyped!</p>
    <a href="https://www.devopsdays.org/events/2025-lima/welcome/">DevOpsDays 2025 - Lima</a>
    </br>
  </div>
</div>

<hr>

<div class="row">
  <div class="col-md-2">
    <strong>Dates</strong>
  </div>
  <div class="col-md-10">
    {{< event_start >}} - {{< event_end >}}
  </div>
</div>

<!--
<div class="row">
  <div class="col-md-2">
    <strong>Program</strong>
  </div>
  <div class="col-md-10">
    View the {{< event_link page="program" text="program." >}}
  </div>
</div> 
-->
<!--
<div class="row">
  <div class="col-md-2">
    <strong>Speakers</strong>
  </div>
  <div class = "col-md-8">
    Check out the {{< event_link page="speakers" text="speakers!" >}}
  </div>
</div> 
-->
<div class="row">
  <div class="col-md-2">
    <strong>Location</strong>
  </div>
  <div class="col-md-10">
    {{< event_location >}}
  </div>
</div>

<div class="row">
  <div class="col-md-2">
    <strong>Register</strong>
  </div>
  <div class="col-md-10">
    {{< event_link page="registration" text="Register to attend the conference!" >}}
  </div>
</div>

<div class = "row">
  <div class = "col-md-2">
    <strong>Propose</strong>
  </div>
  <div class = "col-md-8">
    <a href="">Propose a talk!</a>
  </div>
</div> 


<!--
<div class="row">
  <div class="col-md-2">
    <strong>Sponsors</strong>
  </div>
  <div class = "col-md-10">
    {{< event_link page="sponsor" text="Sponsor the conference!" >}}
  </div>
</div>
-->

<div class="row">
  <div class="col-md-2">
    <strong>Contact</strong>
  </div>
  <div class = "col-md-10">
    {{< event_link page="contact" text="Get in touch with the organizers" >}}
  </div>
</div>

<div class="row">
  <div class="col-md-2">
    <strong>Homepage</strong>
  </div>
  <div class = "col-md-10">
    <a href="https://devopsdays.pe/">DevOpsDays.pe</a>
  </div>
</div>

<!-- Uncomment if you added your city twitter name -->
<!--
{{< event_twitter >}}
-->
