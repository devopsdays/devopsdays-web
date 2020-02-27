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
<br />

<!-- register interest list -->

<div id="register-interest">
  <div class="register-interest-row">
    <div class="register-interest-title">
Register your interest
    </div>
  </div>
  <div class="register-interest-col">
Be alerted about ticket availability (to remind you to pick one up later), notified on when the Call for Papers is opened, or any other conference milestone, please fill in the form below.
  </div>
  <div class="register-interest-col">
    <form class="register-interest-form" action="">
      <input id="register-name" class="input-text" type="text" placeholder="Name">
      <input id="register-email" class="input-text" type="text" placeholder="Email" autocapitalize="off">
      <input type="submit" class="interested-submit" value="Join interested list" />
      <div class="form-response"></div>
    </form>
  </div>
  <div class="register-interest-footer">
Note we will only use this to notify you about this conference and to let you know when the equivalent interest list is available for a subsequent conference (but only for the next one).
  </div>
</div>

<br />
<h3>Alternatively register and purchase tickets via <a href="https://ti.to/devopsdays-galway/2019/">https://ti.to/devopsdays-galway/2019/</a></h3>

<!-- be super careful with the following script, if any addition text is beside the <script></script> tags,
  it will result in the script getting sent through the parser and breaking the code through addition
  of escape sequences -->

<script>
// suggestion from StackOverflow on how to delay loading the subsequent javascript
// until jQuery has been loaded by the site theme
function defer(method) {
    if (window.jQuery) {
        method();
    } else {
        setTimeout(function() { defer(method) }, 50);
    }
}

defer(function() {
  $('.register-interest-form').submit(function(){
    name  = $('#register-name').val();
    email = $('#register-email').val();
    if($.trim(name) != '' && $.trim(email) != '')
    {
      url = ["https://ti.to/devopsdays-galway/2019/interested_users/subscribe.json?&interested_user[email]=", email , "&interested_user[name]=", name, "&callback=?"].join('')
      $.getJSON(url, null, function(data){})
      // reset form back so refresh doesn't leave the same values in
      $('#register-name').val("");
      $('#register-email').val("");
      $('.form-response').html('');
      $('.register-interest-form').html(['<h5 class="thanks">', 'Thanks ', name.split(' ')[0], ', we\'ll be in touch soon</h5>'].join(''));
    } else {
      if($.trim(name) == '' && $.trim(email) == '' ) {
        error = "Missing name and email,";
      }
      else if($.trim(email) == '') {
        error = "Missing email,";
      }
      else {
        error = "Missing name,";
      }
      $('.form-response').html(error + " please try again.");
    }
    return false;
  })
});
</script>

<!-- remaining content -->
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

- The Galmont Hotel and Spa \(conference venue\)[^1]
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

[^1]: For those wishing to stay at The Galmont Hotel and Spa, just mention that you are attending the conference to avail of a special rate.

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

#register-interest {
  background-color: rgba(0, 0, 0, 0.02);
  display: block;
  margin-left: auto;
  margin-right: auto;
  max-width: 900px;
  border: 1px solid;
  border-color: lightgrey;
  font-family: sans-serif;
}
.register-interest-row {
  display: inline-block;
  width: 100%;
  border-bottom: inherit;
  border-color: inherit;
}
.register-interest-title {
  background-color: rgb(240, 240, 240);
  color: #0082AB;
  padding: 5px 15px;
  font-size: xx-large;
  font-weight: bold;
}
.register-interest-footer {
  display: inline-block;
  width: 100%;
  padding: 5px 15px;
  font-size: x-small;
}
.register-interest-col {
  display: table-cell;
  padding: 10px 15px;
  width: 50%;
  vertical-align: top;
}
.input-text {
  width: 100%;
  margin: 5px 0;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
}
.interested-submit {
  background-color: rgb(66, 139, 202);
  border-radius: 4px;
  border: 1px solid #357ebd;
  color: #fff;
  cursor: pointer;
  height: 34px;
  margin: 5px 0;
  padding: 6px 12px;
}
</style>
