+++
Title = "DevOpsDays Halifax 2026"
Type = "welcome"
aliases = ["/events/2026-halifax/"]
Description = "DevOpsDays Halifax 2026 — September 29, 2026 at Volta in downtown Halifax."
+++
<style type="text/css">
.hfx26 {
  --bg: #0B1020;
  --surface: #151A2F;
  --text: #F5F7FF;
  --text-2: #B8C0E0;
  --accent-1: #7C5CFF;
  --accent-2: #D946EF;
  --accent-3: #6FE7FF;
  --border: #2A3152;
  background: var(--bg);
  color: var(--text);
  border-radius: 16px;
  overflow: hidden;
  margin: 1em 0;
}
.hfx26 a { color: var(--accent-3); text-decoration: none; }
.hfx26 a:hover { text-decoration: underline; }
.hfx26 .hero {
  position: relative;
  padding: 4em 2em 3.5em;
  text-align: center;
  background:
    radial-gradient(circle at 18% 20%, rgba(124, 92, 255, 0.28), transparent 55%),
    radial-gradient(circle at 82% 80%, rgba(217, 70, 239, 0.22), transparent 55%),
    radial-gradient(circle at 50% 50%, rgba(111, 231, 255, 0.12), transparent 65%),
    var(--bg);
  border-bottom: 1px solid var(--border);
}
.hfx26 .logo { max-width: 240px; margin: 0 auto 1.5em; }
.hfx26 .logo img, .hfx26 .logo svg { max-width: 100%; height: auto; display: block; margin: 0 auto; }
.hfx26 .meta {
  display: inline-flex;
  align-items: center;
  gap: 0.65em;
  background: rgba(21, 26, 47, 0.7);
  border: 1px solid var(--border);
  padding: 0.5em 1.15em;
  border-radius: 999px;
  font-size: 0.95em;
  color: var(--text-2);
  margin-bottom: 1.25em;
}
.hfx26 .meta-dot {
  width: 8px; height: 8px; border-radius: 50%;
  background: var(--accent-3);
  box-shadow: 0 0 12px var(--accent-3);
  animation: hfxpulse 2s ease-in-out infinite;
}
@keyframes hfxpulse { 0%, 100% { opacity: 1; } 50% { opacity: 0.4; } }
.hfx26 h1 {
  font-size: 2.75em;
  font-weight: 800;
  margin: 0.15em 0 0.4em;
  line-height: 1.1;
  background: linear-gradient(135deg, var(--accent-3) 0%, var(--accent-1) 50%, var(--accent-2) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  letter-spacing: -0.01em;
}
.hfx26 .tagline { color: var(--text-2); font-size: 1.15em; max-width: 640px; margin: 0 auto 2em; line-height: 1.55; }
.hfx26 .hfx26-cta-row { display: flex !important; flex-wrap: wrap; gap: 0.85em; justify-content: center; background: transparent !important; padding: 0 !important; margin: 0 !important; }
.hfx26 .hfx26-btn {
  display: inline-flex !important;
  align-items: center;
  justify-content: center;
  padding: 0.9em 1.75em !important;
  border-radius: 10px !important;
  font-weight: 600 !important;
  font-size: 1em !important;
  transition: transform 0.15s ease, box-shadow 0.15s ease, border-color 0.15s ease;
  border: 1px solid var(--border) !important;
  text-decoration: none !important;
}
.hfx26 .hfx26-btn:hover { text-decoration: none !important; transform: translateY(-2px); }
.hfx26 .hfx26-btn-primary {
  background: linear-gradient(135deg, var(--accent-1), var(--accent-2)) !important;
  color: var(--text) !important;
  border: none !important;
  box-shadow: 0 4px 22px rgba(124, 92, 255, 0.45);
}
.hfx26 .hfx26-btn-primary:hover { box-shadow: 0 6px 30px rgba(124, 92, 255, 0.6); color: var(--text) !important; }
.hfx26 .hfx26-btn-secondary {
  background: var(--surface) !important;
  color: var(--text) !important;
}
.hfx26 .hfx26-btn-secondary:hover { border-color: var(--accent-3) !important; color: var(--accent-3) !important; }
.hfx26 .explore-bar {
  background: var(--surface);
  border-top: 1px solid var(--border);
  border-bottom: 1px solid var(--border);
  padding: 1.5em 2em;
}
.hfx26 .explore-bar h3 {
  text-align: center;
  margin: 0 0 1em;
  color: var(--text);
  font-size: 1em;
  font-weight: 600;
  letter-spacing: 0.05em;
  text-transform: uppercase;
}
.hfx26 .nav-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(160px, 1fr)); gap: 0.65em; }
.hfx26 .hfx26-nav-link { background: var(--bg) !important; border: 1px solid var(--border) !important; border-radius: 8px !important; padding: 0.85em 1em !important; text-align: center; color: var(--text) !important; font-weight: 500; transition: border-color 0.15s ease, color 0.15s ease, transform 0.15s ease; text-decoration: none !important; }
.hfx26 .hfx26-nav-link:hover { border-color: var(--accent-3) !important; color: var(--accent-3) !important; transform: translateY(-1px); }
.hfx26 .body { padding: 3em 2em; background: var(--bg); }
.hfx26 .stats-row { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1em; margin-bottom: 3em; }
.hfx26 .stat { background: var(--surface); border: 1px solid var(--border); border-radius: 12px; padding: 1.5em 1em; text-align: center; }
.hfx26 .stat-num {
  font-size: 2.1em;
  font-weight: 800;
  background: linear-gradient(135deg, var(--accent-3), var(--accent-1));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  line-height: 1;
}
.hfx26 .stat-label { color: var(--text-2); font-size: 0.9em; margin-top: 0.5em; }
.hfx26 .section { margin-bottom: 2.75em; }
.hfx26 .section h2 { font-size: 1.55em; margin: 0 0 0.55em; color: var(--text); font-weight: 700; }
.hfx26 .section p { color: var(--text-2); line-height: 1.7; font-size: 1.05em; margin: 0 0 1em; }
.hfx26 .section p strong { color: var(--text); }
.hfx26 .topic-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(170px, 1fr)); gap: 0.65em; margin-top: 1.25em; }
.hfx26 .topic { background: var(--surface); border: 1px solid var(--border); border-radius: 8px; padding: 0.8em 1em; color: var(--text-2); text-align: center; font-size: 0.95em; }
.hfx26 .video-wrap { position: relative; padding-bottom: 56.25%; height: 0; border-radius: 12px; overflow: hidden; border: 1px solid var(--border); margin: 1em 0 1em; }
.hfx26 .video-wrap iframe { position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0; }
.hfx26 .video-caption { text-align: center; color: var(--text-2); font-size: 0.95em; margin-top: 0.5em; }
.hfx26 .conduct-note { color: var(--text-2); font-size: 0.95em; text-align: center; margin: 2em 0 0; }
@media (max-width: 760px) {
  .hfx26 h1 { font-size: 2em; }
  .hfx26 .hero { padding: 2.75em 1.25em 2.25em; }
  .hfx26 .body { padding: 2em 1.25em; }
  .hfx26 .explore-bar { padding: 1.25em; }
  .hfx26 .stats-row { grid-template-columns: 1fr; gap: 0.65em; }
  .hfx26 .hfx26-cta-row { flex-direction: column !important; }
  .hfx26 .hfx26-btn { width: 100%; }
  .hfx26 .meta { font-size: 0.85em; }
}
</style>
<div class="hfx26">
<div class="hero">
<div class="logo">{{< event_logo >}}</div>
<div class="meta"><span class="meta-dot"></span> September 29, 2026 &nbsp;·&nbsp; Downtown Halifax</div>
<h1>DevOpsDays Halifax 2026</h1>
<p class="tagline">A day dedicated to learning, collaboration, and community for tech practitioners across Atlantic Canada and beyond.</p>
<div class="hfx26-cta-row">
<a class="hfx26-btn hfx26-btn-primary" href="https://talks.devopsdays.org/halifax-2026/cfp">Propose a Talk</a>
<a class="hfx26-btn hfx26-btn-secondary" href="../sponsor/">Become a Sponsor</a>
</div>
</div>
<div class="explore-bar">
<h3>Explore</h3>
<div class="nav-grid">
<a class="hfx26-nav-link" href="../location/">Venue Info</a>
<a class="hfx26-nav-link" href="https://talks.devopsdays.org/halifax-2026/cfp">Propose a Talk</a>
<a class="hfx26-nav-link" href="../sponsor/">Become a Sponsor</a>
<a class="hfx26-nav-link" href="../convince-your-boss/">Convince Your Boss</a>
<a class="hfx26-nav-link" href="../conduct/">Code of Conduct</a>
<a class="hfx26-nav-link" href="../contact/">Contact Us</a>
</div>
</div>
<div class="body">
<div class="stats-row">
<div class="stat"><div class="stat-num">350+</div><div class="stat-label">Attendees since 2024</div></div>
<div class="stat"><div class="stat-num">30+</div><div class="stat-label">Speakers since 2024</div></div>
<div class="stat"><div class="stat-num">3rd</div><div class="stat-label">Annual edition</div></div>
</div>
<div class="section">
<p>Building on the momentum of previous years, we are bringing the community together again for insightful talks, engaging Open Spaces, and meaningful connection. Expect sessions grounded in real-world experience, covering the topics teams are navigating today.</p>
<div class="topic-grid">
<div class="topic">Cloud Native</div>
<div class="topic">Platform Engineering</div>
<div class="topic">AI in DevOps</div>
<div class="topic">Site Reliability</div>
<div class="topic">Security &amp; Compliance</div>
</div>
</div>
<div class="section">
<h2>Highlights from previous years</h2>
<div class="video-wrap">
<iframe src="https://www.youtube.com/embed/ndZHjj8lEpw?rel=0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<p class="video-caption">🎬 Highlights from DevOpsDays Halifax 2024</p>
<p>Browse the <a href="https://www.flickr.com/photos/201499771@N04/albums/72177720320854462">2024 photo album</a> and the <a href="https://www.flickr.com/photos/201499771@N04/albums/72177720332333781/">2025 photo album</a> for a glimpse into past events.</p>
</div>
<div class="section">
<h2>Who attends?</h2>
<p>DevOpsDays Halifax brings together a diverse and highly engaged group of professionals — senior technical leaders, executives, software engineers, platform teams, site reliability engineers, security specialists, and students. Whether you are shaping DevOps strategy at an organizational level or just getting started, this event offers a chance to connect, learn, and grow with peers across Atlantic Canada and beyond.</p>
</div>
<div class="section">
<h2>Get involved</h2>
<p>The Call for Proposals runs <strong>May 1 – June 8, 2026</strong>. If you have a story, lesson, or perspective to share, we encourage you to <a href="https://talks.devopsdays.org/halifax-2026/cfp">apply via Pretalx</a>.</p>
<p>Registration details will be announced soon. Discounted tickets for students and folks from underrepresented communities will be available — please email <a href="mailto:halifax@devopsdays.org">halifax@devopsdays.org</a> once registration opens to request a voucher.</p>
<p>Thank you to our venue sponsor, <strong>Volta</strong>, for hosting us in downtown Halifax.</p>
</div>
<p class="conduct-note">By attending, you agree to the <a href="../conduct/">DevOpsDays Halifax Code of Conduct</a>.</p>
</div>
</div>
