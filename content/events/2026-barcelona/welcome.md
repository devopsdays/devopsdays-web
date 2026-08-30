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
  /* Full-bleed masthead. It is itself the .col-md-12, so Bootstrap's
     flex: 0 0 100% / max-width: 100% has to be overridden or the width is
     clamped to the container.

     The blue is a lighter, logo-derived teal rather than near-black navy, but
     it still has to carry white text: it runs from #12789A at the top (5.1:1
     against white) to #0A5771 at the bottom (7.8:1), deepening as it goes so
     the small venue and date text sits on the strongest contrast.

     --bcn-inset aligns the masthead text with the body copy below it. That
     copy sits in .bcn-wrap, a 1000px column centred in the viewport, so the
     inset is the distance from the screen edge to that column: 50vw - 500px.
     Below roughly 1030px the column is no longer 1000px wide and hugs the
     container padding instead, which is what the 15px floor picks up. */
  .welcome-page-masthead {
    --bcn-inset: max(15px, calc(50vw - 500px));
    flex: 0 0 100vw;
    width: 100vw;
    max-width: none;
    margin-top: 0;
    margin-left: calc(50% - 50vw);
    margin-right: calc(50% - 50vw);
    padding-left: var(--bcn-inset);
    padding-right: var(--bcn-inset);
    border-bottom: 4px solid #F9CD34;
    font-size: +1em;
    background: #12789A;
    background: linear-gradient(#12789A, #0A5771);
  }

  /* 100vw does not account for the scrollbar; stop the overhang from creating
     a horizontal scroll. Safe here - the theme has no sticky or fixed
     positioning for this to break. */
  body {
    overflow-x: hidden;
  }
  .welcome-page-masthead,
  .welcome-page-masthead a {
    color: #fff;
  }
  .welcome-page-date {
    font-weight: 700;
  }
  /* Bigger title, now that the masthead carries only the name and the dates.
     text-transform: none undoes the theme's generic h1 capitalize rule, which
     was rendering the wordmark as "Devopsdays". Lowercase is how devopsdays
     sets its own name, here and in the site nav and footer. */
  .welcome-page-masthead h1.welcome-page {
    font-size: clamp(2.6rem, 5vw, 3.8rem);
    line-height: 1.1;
    margin-bottom: 0.4rem;
    text-transform: none;
  }

  /* Drop the venue and the address from the masthead - both still appear in
     the Location row below. The fields stay in main.yml because the location
     page's map, the Location row and the schema.org event metadata all read
     them, so this has to be done here rather than by blanking the config.
     The two <br> that follow them go too, or they leave the gap behind. */
  .welcome-page-masthead-venue,
  .welcome-page-masthead-venue + br,
  .welcome-page-masthead-venue + br + span,
  .welcome-page-masthead-venue + br + span + br {
    display: none;
  }
  .e-summary {
    font-size: +1em;
    font-weight: 700;
  }

  /* Hide the "share this page" row. Its email icon shares the page by mail,
     which reads as a second Contact button, and its LinkedIn icon posts to the
     visitor's own feed rather than linking to ours. Both jobs are done more
     clearly by the Contact button and the Follow badge below.
     Note: social_shares: [] would not work here - an empty list is falsy in
     Hugo, so footer_scripts.html falls back to showing all four buttons. */
  #share {
    display: none;
  }

  /* Masthead buttons: outlined rather than filled, so they sit quietly on the
     navy instead of competing with it. */
  a.event-cta-button {
    background-color: transparent;
    border: 1px solid rgba(255, 255, 255, 0.65);
    color: #fff;
  }
  a:hover.event-cta-button {
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

  /* The theme sets html { font-size: 14px }, so a bare rem here is 14px and
     body copy renders small and light. Lift the whole column to ~16px with a
     roomier line height. */
  .bcn-wrap {
    max-width: 1000px;
    margin: 0 auto;
    font-size: 1.15rem;
    line-height: 1.65;
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

  /* Top section: the logo sits beside everything from the LinkedIn line down
     to the end of the intro copy, centred against that whole block rather
     than against the first paragraph. Stacks on mobile. */
  .bcn-top {
    display: flex;
    flex-wrap: wrap;
    gap: 2rem;
    align-items: center;
    margin: 1.5rem 0 2.5rem;
  }
  .bcn-top-main {
    flex: 1 1 340px;
    min-width: 0;
  }
  .bcn-top-logo {
    flex: 0 1 260px;
    text-align: center;
    margin: 0 auto;
  }
  .bcn-top-logo img {
    max-width: 100%;
    height: auto;
  }
  .bcn-top-main h2 {
    margin-top: 0;
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
    font-size: 1.35rem;
    font-weight: 700;
    color: #111224;
  }
  /* Title picks up the card's accent, darkened so it stays readable on cream. */
  .bcn-card.amber h3   { color: #A34E12; }
  .bcn-card.crimson h3 { color: #C00E38; }
  .bcn-card.cyan h3    { color: #076A85; }
  .bcn-card p {
    margin-bottom: 0;
    font-size: 1.1rem;
    line-height: 1.6;
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

<div class="bcn-top">
<div class="bcn-top-main">

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

<h2>Hola, Barcelona! We're Back!</h2>

<p>
  After a long break, we're absolutely thrilled to announce that <b>DevOpsDays is coming back in 2026!</b> It's been over ten years since our last event here in 2013, and things in the world of DevOps have changed so much. We're really excited to bring the global DevOpsDays community back to our amazing city.
</p>

<p>
  Get ready to meet up with fellow professionals, share what you've learned, and discover the newest ideas, tools, and ways of working in DevOps. Whether you've been doing this for ages or are just starting out, this is your chance to jump into open discussions, find fresh perspectives, and help make our local DevOps community even stronger.
</p>

</div>

<div class="bcn-top-logo">
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
    <h3>Open Spaces</h3>
    <p>This is where the real magic happens! You can suggest and lead discussions on topics that matter most to you, creating natural learning and teamwork.</p>
  </div>
  <div class="bcn-card cyan">
    <h3>Time to Connect</h3>
    <p>Meet new people, build relationships, and share ideas in a friendly and welcoming setting.</p>
  </div>
</div>

<p>
  We're busy planning an awesome event, and we can't wait to welcome you back. Keep an eye out for more details on how to get involved as a speaker, sponsor or even a volunteer.
</p>
<p>
  <b>Let's make this return bigger and better than ever before!</b>
</p>

<div class="bcn-cta">
  <p><strong>Got questions or want to help out?</strong><br>Don't hesitate to reach out &ndash; we'd love to chat!</p>
  <a class="bcn-btn" href="/events/2026-barcelona/sponsor">Sponsor the conference</a>
  <a class="bcn-btn outline" href="/events/2026-barcelona/contact">Contact us</a>
</div>

</div>
