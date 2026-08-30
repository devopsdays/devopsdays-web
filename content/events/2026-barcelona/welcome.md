+++
Title = "DevOpsDays Barcelona 2026"
Type = "welcome"
aliases = ["/events/2026-barcelona/"]
Description = "DevOpsDays Barcelona 2026"
+++
<style>
  /* Palette sampled from the DevOpsDays Barcelona logo:
     navy #111224 · cyan #00BAEB · amber #F9CD34 · crimson #F11647 · cream #FFFCF0 */

  /* Masthead: navy instead of the theme default blue-to-grey, so white text
     stays legible all the way down to the venue address. */
  .welcome-page-masthead {
    background: #111224;
    background: linear-gradient(#111224, #232A52);
    border-bottom: 4px solid #00BAEB;
    font-size: +1em;
  }
  .welcome-page-masthead,
  .welcome-page-masthead a {
    color: #fff;
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

  /* Share icons and the masthead Contact button: outlined rather than filled,
     so they sit quietly on the navy instead of competing with it. */
  a.jssocials-share-link, a.event-cta-button {
    background-color: transparent;
    border: 1px solid rgba(255, 255, 255, 0.65);
    color: #fff;
  }
  a:hover.jssocials-share-link, a:hover.event-cta-button {
    background-color: rgba(255, 255, 255, 0.15);
    color: #fff;
  }

  .content-text {
    width: 100%;
    margin: 0 auto;
  }

  div.sponsor-row img.img-fluid {
    max-height: 70px;
  }

  .bcn-wrap {
    max-width: 1000px;
    margin: 0 auto;
  }

  /* Follow line, sits directly under the masthead */
  .bcn-follow {
    display: flex;
    align-items: center;
    gap: 0.6rem;
    margin: 1.25rem 0 1.5rem;
    font-weight: 600;
    color: #111224;
  }
  .bcn-follow a.social-li {
    font-size: 1.6rem;
    color: #111224;
    text-decoration: none;
  }
  .bcn-follow a.social-li:hover {
    color: #00BAEB;
  }

  /* Dates / Location / Contact */
  .bcn-facts {
    border-left: 4px solid #00BAEB;
    padding-left: 1.25rem;
    margin-bottom: 2rem;
  }
  .bcn-facts .row {
    margin-bottom: 0.35rem;
  }

  /* Intro: copy beside the logo on desktop, stacked on mobile */
  .bcn-intro {
    display: flex;
    flex-wrap: wrap;
    gap: 2rem;
    align-items: flex-start;
    margin: 2rem 0;
  }
  .bcn-intro-copy {
    flex: 1 1 320px;
    min-width: 0;
  }
  .bcn-intro-logo {
    flex: 0 1 260px;
    text-align: center;
    margin: 0 auto;
  }
  .bcn-intro-logo img {
    max-width: 100%;
    height: auto;
  }
  .bcn-intro h2 {
    margin-top: 0;
    color: #111224;
  }

  /* "What's in Store?" cards */
  .bcn-card-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    margin: 1.5rem 0 2.5rem;
  }
  .bcn-card {
    flex: 1 1 220px;
    border: 1px solid #e6e6ea;
    border-top: 4px solid #00BAEB;
    border-radius: 6px;
    padding: 1.25rem 1.5rem;
    background: #FFFCF0;
    color: #1a1a1a;
  }
  .bcn-card.amber   { border-top-color: #F9CD34; }
  .bcn-card.crimson { border-top-color: #F11647; }
  .bcn-card.cyan    { border-top-color: #00BAEB; }
  .bcn-card h3 {
    margin-top: 0;
    margin-bottom: 0.75rem;
    font-size: 1.1rem;
    color: #111224;
  }
  .bcn-card p {
    margin-bottom: 0;
    font-size: 0.93rem;
  }

  /* Bottom call to action */
  .bcn-cta {
    background: #FFFCF0;
    border: 1px solid #e6e6ea;
    border-top: 4px solid #F11647;
    border-radius: 8px;
    padding: 1.75rem 2rem;
    margin: 2rem 0;
    text-align: center;
    color: #1a1a1a;
  }
  .bcn-btn {
    display: inline-block;
    background: #D8123F;
    color: #fff !important;
    padding: 0.65rem 1.75rem;
    border-radius: 5px;
    font-weight: 600;
    text-decoration: none;
    margin: 0.4rem;
  }
  .bcn-btn:hover {
    background: #B00E34;
    color: #fff !important;
  }
  .bcn-btn.outline {
    background: transparent;
    border: 2px solid #111224;
    color: #111224 !important;
  }
  .bcn-btn.outline:hover {
    background: #111224;
    color: #fff !important;
  }
</style>

<div class="bcn-wrap">

<div class="bcn-follow">
  {{< event_social_linkedin >}}
  <span>Follow DevOpsDays Barcelona on LinkedIn</span>
</div>

<div class="bcn-facts">

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

<!---
<div class = "row">
  <div class = "col-md-2">
    <strong>Newsletter</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="newsletter" text="Subscribe to our newsletter for the next news !" >}}
  </div>
</div>
--->

<div class = "row">
  <div class = "col-md-2">
    <strong>Contact</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="contact" text="Get in touch with the organizers" >}}
  </div>
</div>

</div>

<div class="bcn-intro">
  <div class="bcn-intro-copy">
    <h2>Hola, Barcelona! We're Back!</h2>
    <p>
      After a long break, we're absolutely thrilled to announce that <b>DevOpsDays is coming back to Barcelona in 2026!</b> It's been over ten years since our last event here in 2013, and things in the world of DevOps have changed so much. We're really excited to bring the global DevOpsDays community back to our amazing city.
    </p>
    <p>
      Get ready to meet up with fellow professionals, share what you've learned, and discover the newest ideas, tools, and ways of working in DevOps. Whether you've been doing this for ages or are just starting out, this is your chance to jump into open discussions, find fresh perspectives, and help make our local DevOps community even stronger.
    </p>
  </div>
  <div class="bcn-intro-logo">
    {{< event_logo >}}
    <br><small>DevOpsDays Barcelona 2026</small>
  </div>
</div>

<h2>What's in Store?</h2>

<div class="bcn-card-grid">
  <div class="bcn-card amber">
    <h3>Great Talks</h3>
    <p>Hear from industry leaders and local experts on all sorts of topics, from making things automatic and using cloud tech to security and how companies are changing their ways.</p>
  </div>
  <div class="bcn-card crimson">
    <h3>Interactive Open Spaces</h3>
    <p>This is where the real magic happens! You can suggest and lead discussions on topics that matter most to you, creating natural learning and teamwork.</p>
  </div>
  <div class="bcn-card cyan">
    <h3>Plenty of Chances to Connect</h3>
    <p>Meet new people, build relationships, and share ideas in a friendly and welcoming setting.</p>
  </div>
</div>

<p>
  We're busy planning an awesome event, and we can't wait to welcome you back to DevOpsDays Barcelona. Keep an eye out for more details on how to get involved as a speaker, sponsor or even a volunteer.
</p>
<p>
  <b>Let's make this return bigger and better than ever before!</b>
</p>

<div class="bcn-cta">
  <p><strong>Want to be part of DevOpsDays Barcelona 2026?</strong><br>Put your company in front of the local DevOps community, or just say hello &mdash; we'd love to chat.</p>
  <a class="bcn-btn" href="/events/2026-barcelona/sponsor">Sponsor the conference</a>
  <a class="bcn-btn outline" href="/events/2026-barcelona/contact">Contact us</a>
</div>

</div>
