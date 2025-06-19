+++
Title = "DevOpsDays Halifax 2025"
Type = "welcome"
aliases = ["/events/2025-halifax/"]
Description = "DevOpsDays Halifax 2025"
+++

<style type="text/css">
.hfx {
  display: flex;
  flex-direction: column;
  background-color: #EEF3C7;
  padding: 2em;
  gap: 2em;
  border-radius: 10px;
  align-items: center;
  text-align: center;
}
.hfx .header {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  gap: 2em;
  width: 100%;
}
.hfx .logo {
  flex: 1;
  max-width: 400px; /* Increase the max-width to make the logo bigger */
  margin: 0; /* Remove any margin */
  padding: 0; /* Remove any padding */
}
.hfx .text {
  flex: 3;
  color: #303030;
  font-size: 1.2em;
  text-align: left;
}
.hfx .buttons {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;
  gap: 1em;
  width: 100%;
}
.hfx .buttons a {
  flex: 1 1 200px;
  display: flex;
  justify-content: center;
}
.hfx button {
  color: #EEF3C7;
  background-color: #48BD86;
  border: none;
  border-radius: 0.5em;
  font-weight: bold;
  padding: 1em 2em;
  width: 100%;
  max-width: 200px; /* Ensure all buttons have the same width */
}
.button-link {
  color: #EEF3C7;
  background-color: #48BD86;
  border: none;
  border-radius: 0.5em;
  font-weight: bold;
  padding: 1em 2em;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
  width: 100%;
  max-width: 200px;
  cursor: pointer;
  box-sizing: border-box;
}

@media only screen and (max-width: 760px) {
  .hfx .header {
    flex-direction: column;
  }
  .hfx .text {
    text-align: center;
  }
  .hfx .buttons {
    flex-direction: column;
  }
  .hfx .buttons a {
    width: 100%;
  }
}
.carousel-container {
  position: relative;
  width: 100%;
  max-width: 800px;
  margin: 1em auto 2em;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.carousel-slide {
  display: flex;
  transition: transform 0.5s ease-in-out;
  width: 400%; /* 4 images */
}

.carousel-slide img {
  width: 100%;
  flex-shrink: 0;
  object-fit: cover;
  border-radius: 10px;
}

.carousel-btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  background-color: rgba(72, 189, 134, 0.7);
  border: none;
  color: white;
  font-size: 2em;
  padding: 0 0.4em;
  cursor: pointer;
  border-radius: 5px;
  user-select: none;
}

.carousel-btn.prev {
  left: 10px;
}

.carousel-btn.next {
  right: 10px;
}

.carousel-btn:hover {
  background-color: #48BD86;
}

@media (max-width: 760px) {
  .carousel-container {
    max-width: 100%;
  }
}
</style>
<div class="hfx">
  <div class="header">
    <div class="logo">
      {{< event_logo >}}
    </div>
    <div class="text">
      <p>DevOpsDays Halifax 2025 – bigger, bolder, and back for more!</p>
      <p>Last year, we welcomed nearly 200 attendees from across the Maritime provinces, hosted 20 expert speakers from around the world, and saw representation from leading tech companies. With a three-day program featuring conference sessions, hands-on workshops, a social networking event, and a speaker dinner cruise, it was a milestone event for the region’s tech community.</p>
      <p>Join us in 2025 as we build on this momentum! Expect insightful talks, engaging Open Spaces, and hands-on learning opportunities on topics such as Cloud Native, Platform Engineering, AI in DevOps, and more.</p>
      <p><strong>Who attends?</strong></p>
      <p>DevOpsDays Halifax attracts a diverse mix of professionals, from senior technical leaders and executives to software engineers, platform teams, site reliability engineers, security specialists, and students. Whether you're shaping DevOps strategy at an enterprise level or just starting out in the field, this event is your chance to connect, learn, and grow with the best in the industry.</p>
      <p>Set against the stunning backdrop of Halifax’s waterfront, DevOpsDays Halifax also offers the opportunity to connect over fresh seafood, scenic views, and the warmth of the Atlantic Canadian tech community.</p>
      <p><strong>Early Bird Price is in effect.</strong> <a href="https://tickets.devopsdays.org/devopsdays-halifax/2025">Get your tickets </a> <strong>before July 15, 2025</strong> to receive a 15% discount on regular tickets!</p>
      <p><a href="https://www.flickr.com/photos/201499771@N04/albums/72177720320854462" style="color:#48BD86; font-weight:bold; text-decoration:underline;">DevOpsDays Halifax 2024 Photo Album</a></p>
      <p>By attending this event, you agree to the <a href="../conduct/">DevOpsDays Halifax Code of Conduct</a>.</p>
    </div>
  </div>
  <div class="buttons">
    <a href="https://tickets.devopsdays.org/devopsdays-halifax/2025" class="button-link">Get your Tickets</a>
    <a href="../sponsor/"><button>Become a Sponsor</button></a>
    <a href="../conduct/"><button>Code of Conduct</button></a>
  </div>
  </div>

{{< event_twitter >}}
