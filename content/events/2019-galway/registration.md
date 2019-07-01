+++
Title = "Registration"
Type = "event"
Description = "Registration for devopsdays Galway 2019"
+++

Registation begins {{< registration_start >}}<br/>
Registation ends {{< registration_end >}}

---

Registration for DevOpsDays Galway 2019 is now open. If you have any questions please contact us at {{< email_organizers >}}.

<!-- tickets widget -->

<div style="width:100%; text-align:left;">
<link rel="stylesheet" type="text/css" href='https://css.tito.io/v1.1' />
<script src='https://js.tito.io/v1' async></script>
<tito-widget event="devopsdays-galway/2019"></tito-widget>
</div>

<h3>Alternatively register via <a href="https://ti.to/devopsdays-galway/2019/">https://ti.to/devopsdays-galway/2019/</a></h3>
<br />

### Accommodation

Now that you're planning on attending, the next step is to look at accommodation.
We've put together a small list to help, there are plenty of other options,
these are just some with guidelines as to how long it will take to travel
between your accommodation and the venue.

If you're unsure about how easy it is to get from the location you are choosing
to the venue, just email us at {{< email_organizers >}} and we'll provide some
local knowledge to help you decide.

Selection of hotels close by:

- The Galmont Hotel and Spa \(conference venue\)<!--[^1]-->
- Park House (2 mins walk)
- Foster Court Hotel (3 mins walk)
- Merrick (5 mins walk)

Some hotels on bus routes or with a little more walking:

- G Hotel (15 mins walk)
- The Connacht Hotel (17 mins bus/walk or 22 mins walk)

Also some nearby hostels with private rooms:

- Bunk (2 mins walk)
- Snoozles (2 mins walk)

Galway is also well serviced by a number of Bed & Breakfast venues on College Road, less than 10 minutes walking distance from the venue.

<!--
[^1]: For those wishing to stay at The Galmont Hotel and Spa, just mention that you are attending the conference to avail of a special rate.
-->

<!-- some custom styles to tailor the tickets and register interest form -->

<style>
.tito-ticket-list::before {
  display: inline-block;
  width: 100%;
  height: 40px;
  line-height: 40px;
  vertical-align: middle;
  color: #0082AB;
  content: "{{< event_start >}} - {{< event_end >}}";
  padding-left: 15px;
  background-color: rgb(240, 240, 240);
  border-bottom: 1px solid lightgray;
}

.tito-wrapper::before {
  display: inline-block;
  width: 100%;
  font-size: xx-large;
  font-weight: bold;
  color: #0082AB;
  content: "Tickets";
  padding-left: 15px;
  background-color: rgb(240, 240, 240);
  border-bottom: 1px solid lightgray;
}

.tito-wrapper {
  padding: 0px;
  margin-bottom: 0px;
}
</style>
