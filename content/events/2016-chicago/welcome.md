+++
City = "Chicago"
Description = ""
Year = "2016"
date = "2016-03-04T17:36:05-06:00"
event = "2016chicago"
title = "welcome"
type = "event"
aliases = ["/events/2016-chicago"]

+++

## Tuesday, August 30 and Wednesday, August 31

Welcome!  The group that brought you DevOpsDays Chicago 2015 is back together and planning the 2016 event.  We're encouraged by the feedback from last year's event and are determined to bring an improved experience and continue the DevOps conversation this August in Chicago.

<div style="text-align:center;">
  <img alt="DevOpsDays Chicago 2016" src="./logo.png"/>
</div>

<table>
  <tr>
    <td><b>Date</b></td>
    <td><%= render(:partial => "/#{@eventhome}/_target_date") -%></td>
  </tr>
  <tr>
    <td><b>Location</b></td>
    <td><a href="/location/">Summit West</a></td>
  </tr>
  <!-- <tr>
    <td><b>Participants</b></td>
    <td><a href="/registration/">Register to attend the event!</a></td>
</tr> -->
<!--<tr>
    <td><b>Speakers</b></td>
    <td>Check out the <a href="/program/">program</a>.</td>
  </tr>
-->
  <tr>
    <td><b>Sponsors</b></td>
    <td><a href="/sponsor/">Sponsor the event!</a> It's a great way to attract new talent and promote your organization.</td>
  </tr>
  <tr>
    <td><b>Contact</b></td>
    <td><a href="/contact/">Get in touch with the Organizers</a>.</td>
  </tr>
  <tr>
    <td></td>
    <td><a href="https://twitter.com/devopsdaysChi" class="twitter-follow-button" data-show-count="false">Follow @devopsdaysChi</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
    </td>
  </tr>
</table>

If you're interested in volunteering during the event, please <a href="mailto:<%= render(:partial => "/#{@eventhome}/_email_organizers") %>?subject=DevOpsDays 2016 Volunteering">send us an email</a> or tweet at <a href="https://twitter.com/devopsdaysChi">@devopsdaysChi</a>. We can always use an extra hand and it can be quite exciting behind the scenes. :)

We hope to see you in Chicago in August!
