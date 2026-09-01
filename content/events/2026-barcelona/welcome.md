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

  /* The three things that are live now: program, speakers and tickets. A
     strip of linked cards rather than three more lines in the facts box -
     these are what we want a visitor to act on, not more small print. The
     whole card is the link; the arrow is decoration. Left accent bar instead
     of the top bar the "What's in Store?" cards use, so the two grids do not
     read as the same kind of thing. */
  .bcn-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    margin: 1.5rem 0 2.5rem;
  }
  .bcn-action {
    flex: 1 1 240px;
    display: block;
    border: 1px solid #e6e6ea;
    border-left: 4px solid #00BAEB;
    border-radius: 6px;
    padding: 1.1rem 1.35rem;
    background: #fff;
    color: #1a1a1a !important;
    text-decoration: none !important;
    transition: box-shadow 0.15s ease, transform 0.15s ease;
  }
  .bcn-action:hover {
    box-shadow: 0 4px 14px rgba(17, 18, 36, 0.12);
    transform: translateY(-2px);
  }
  .bcn-action-title {
    display: block;
    font-size: 1.35rem;
    font-weight: 700;
    margin-bottom: 0.3rem;
    color: #076A85;
  }
  .bcn-action p {
    margin: 0;
    font-size: 1.05rem;
    line-height: 1.55;
  }
  .bcn-action-go {
    display: block;
    margin-top: 0.6rem;
    font-weight: 600;
    color: #076A85;
  }
  .bcn-action.amber { border-left-color: #F9CD34; }
  .bcn-action.amber .bcn-action-title,
  .bcn-action.amber .bcn-action-go { color: #A34E12; }
  .bcn-action.crimson { border-left-color: #F11647; }
  .bcn-action.crimson .bcn-action-title,
  .bcn-action.crimson .bcn-action-go { color: #C00E38; }

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

<!-- Register, Program, Speakers and Sponsors were rows here. They are things
     to do rather than facts about the event, so they now live in the card
     strip below and in the buttons at the foot of the page. Listing them in
     both places would put the same links on the page twice. -->

<!-- <div class = "row">
  <div class = "col-md-2">
    <strong>Propose</strong>
  </div>
  <div class = "col-md-8">
    {{< event_link page="propose" text="Propose a talk!" >}}
  </div>
</div> -->

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

<h2>The Program Is Live</h2>

<div class="bcn-actions">
  <a class="bcn-action" href="/events/2026-barcelona/program">
    <span class="bcn-action-title">Program</span>
    <p>See what is on across the two days of the conference.</p>
    <span class="bcn-action-go">View the schedule &rarr;</span>
  </a>
  <a class="bcn-action amber" href="/events/2026-barcelona/speakers">
    <span class="bcn-action-title">Speakers</span>
    <p>Meet the people taking the stage in Barcelona this November.</p>
    <span class="bcn-action-go">Meet the speakers &rarr;</span>
  </a>
  <a class="bcn-action crimson" href="/events/2026-barcelona/registration">
    <span class="bcn-action-title">Tickets</span>
    <p>Registration is open &ndash; book your place for both days.</p>
    <span class="bcn-action-go">Register now &rarr;</span>
  </a>
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
  The call for proposals is closed and the program is set. Take a look at the talks and at the speakers joining us in November, then book your ticket for the two days.
</p>
<p>
  There is still room for sponsors, and we would love to hear from anyone who wants to help make this edition happen.
</p>
<p>
  <b>Let's make this return bigger and better than ever before!</b>
</p>

<div class="bcn-cta">
  <p><strong>See you on 13&ndash;14 November.</strong><br>Book your ticket, sponsor the conference, or just say hello &ndash; we'd love to chat!</p>
  <a class="bcn-btn" href="/events/2026-barcelona/registration">Get your ticket</a>
  <a class="bcn-btn outline" href="/events/2026-barcelona/sponsor">Sponsor the conference</a>
  <a class="bcn-btn outline" href="/events/2026-barcelona/contact">Contact us</a>
</div>

</div>
