+++
Categories = []
Description = ""
Tags = []
date = "2023-11-06T23:40:47-06:00"
title = "Devopsdays - Organizing Guide"
aliases = ["/pages/organizing/", "/pages/organising/", "/organising/"]
+++

---

# Introduction

Congratulations! The fact that you have reached this page means you at least have an interest in spreading the devops love to the world. Back in 2009 when we organized the first event, we were probably as excited as you are now. But we were also bit scared and full of questions: how does this work? how do we get sponsors? what is the first thing we have to do?

Years later, we can offer some advice from our experiences. Even though every event is a bit unique in its own way, we've come to a more or less standard approach for organizing these events. With this document we want to support you and make you feel at ease in organizing one yourself. Don't worry; we'll be there along the way!

We recommend that at least one person on your team attend another devopsdays first, and then get in touch with the [core organizers](/contact) to tell us about where you'd like to organize your own!

---

## Essential Rules for Organizing

Every devopsdays event is different, but there are a few rules to keep in mind if you'd like your event to be listed on devopsdays.org:

- Inclusiveness and respect for differences are core devops values, and we invite you to help us make each devopsdays event a place that is welcoming and respectful to all participants. Your event will need to have a code of conduct.
- These are community events, so your event must have an open call for proposals and accept registrations from the general public. Internal devops events focused on a specific organization or curated events with all speakers privately selected are wonderful and we encourage them, but they won't be listed as "devopsdays" events on this site.
- You must look for ways to create opportunities for conversation and collaboration during the event. Traditionally, this is done through the use of [open spaces](https://www.devopsdays.org/open-space-format/), but it can take many forms. Other examples include (but are not limited to) attendee-led roundtables, office hours, birds-of-a-feather groups, Q&A sessions, and workshops with robust attendee interaction.
- These events are not for individual or corporate profit. If you have money left over, you can use it for your next event, to help other devopsdays events directly or via sending participants, or for [charity](/devops-gives-back/). The global core team can (and will) accept donations in order to help us cover costs such as DNS and web hosting, but _only_ from conferences that use [Conference Ops](http://www.conferenceops.com/). In any case, leftover money should not be making its way into anyone's pockets.
- Sponsors are much appreciated for their financial assistance, and they are welcome to participate in devopsdays events. They are never given attendee contact info by a devopsdays event's organizers, nor are they allowed to purchase speaking slots for talks or ignites at a devopsdays.

---

## Assembling a team

In the devops spirit of collaboration, find people in your region that want to help you run the next awesome event.

- Talk to people at your local devops or related community meetups.
- Post on social media that you'd be interested in running one in your region. (Use the #devopsdays hashtag.)
- [Email the global core organizers](mailto:info@devopsdays.org) and we'll try to connect you to other people in your region

You're going to need at least three people from three different organizations on your local organizing team, so you have a broader base of support and involvement from the community. We aren't going to green-light events put on by just one company, and you'll want the organizers from the relevant local meetups on board. Make sure everyone understands this is not about lead generation; organizers cannot use contact info from the event for their own companies.

---

## Initial Steps for Organizing

When you have your initial team, [email the global core organizers](mailto:info@devopsdays.org) and we'll schedule a kickoff meeting with you. This will be an hour-long video call with your team.

After the kickoff meeting, we'll wait for you to send your initial pull request and for you to email us the email addresses and names of your organizer team. When we have those, we can officially set your event's tools up.

The way you get your event listed on the website is by submitting a pull request to [https://github.com/devopsdays/devopsdays-web](https://github.com/devopsdays/devopsdays-web). The instructions can be found on that repo's [README](https://github.com/devopsdays/devopsdays-web/blob/master/README.md).

We prefer the city name for the actual email and site. Wider regional terms are less preferable since someone in a nearby city may want to host their own devopsdays. Fun nicknames require too much dereferencing of pointers and so are best kept for slogans and t-shirt designs.

It's fine if you just list the organizers, the city, and say "coming soon". You don't need to have selected the date and venue yet; however, we won't merge a PR with dates unless it also has a venue listed. You also do not need to open registration or open the CFP right away.


We'll set up the `cityname@devopsdays.org` mail alias for your team. This will let you have a standard email listed as a public-facing organizer point of contact. All organizers on your team need to be on this alias individually, and the global core team is also on this email alias. It's fine to use other email lists, chat programs, and other tools for your internal coordination and outgoing announcements, but we require that your event's published `organizer_email:` field be set to this for consistency and problem prevention.

We'll also invite all your organizers to the global devopsdays organizer Slack team (with organizers from around the world!) so you can meet other organizers and share ideas. Using the global devopsdays organizer Slack is optional, and is also the best way to meet and chat with other devopsdays organizers, get help with the website and other tooling, and tap into the collective history and wisdom of devopsdays events from around the world! The only people we'll invite to this Slack are the people listed as organizers on your contact page, and if you join, it's a good idea to list your city in your Slack profile. If you want to use Slack for attendees at your event, you should set up a different one.

### Code of Conduct

A well-defined Code of Conduct (CoC) is essential for every event. It sets the behavioral expectations and ensures a safe environment for all participants. Adhering to and enforcing the CoC is non-negotiable. You can use or adapt [the provided template](https://github.com/devopsdays/devopsdays-web/blob/master/utilities/examples/content/events/yyyy-city/conduct.md) as desired. **Note: You will need to have a code of conduct for each event before your initial pull request will be merged.**

The code of conduct must include the following:

- **Establish Reporting Mechanisms**: Clearly define how attendees can report any CoC violations. Offer multiple reporting avenues.

- **Train Staff and Volunteers**: Ensure your staff and volunteers are well-versed with the CoC and understand how to handle potential violations.

- **Swift Action**: In case of a reported violation, take prompt action. This might involve removing the offender from the event or involving law enforcement in severe cases.

- **Post-Event Review**: After the event, review any CoC violations and assess how they were handled. This review can provide insights for future events.

---

## Important Dates

* **T-12 Months to Event:** Kick off venue search, if needed
  - Why: Venues book out in advance, and in fact, larger venues book out years in advance.
* **T-10 Months to Event:** Kick off budget discussions
  - Why: Helps determine sponsorships (and the cost for each) needed and the ticket price. See [Finances](#handling-finances) and [Budgeting](#budgeting) for more information.
* **T-9.5 Months to Event:** Pick venue
  - Why: See above, but its good to get this locked in. Check out [Selecting a Venue](#selecting-a-venue) for more information.
* **T-9 Months to Event:** Confirm organizers
  - Why: Start formulating and start [distributing the work](#distributing-the-work)
* **T-8 Months to Event:** Start org dinner
  - Why: "Breaking bread" with your fellow organizers is a good way to kick things off. Organizing will have its ups and downs, start it off strong.
* **T-8 Months to Event:** Ensure sponsor prospectus goes out.
  - Why: Sponsors, especially larger companies, lock in budgets the financial year prior. It is best to get on their radar now instead of after your program has gone live. See [Finding & Handling Sponsors](#findinghandling-sponsors) for more information.
* **T-7.5 Months to Event:** Ensure CFP goes out
  - Why: If you're trying to draw in the most content possible, having your CFP open for maximum duration draws the most abstracts. It allows your team to also set a good program. See [Call for Proposals](#call-for-proposals) for more information.
* **T-7.5 Months to Event:** Kick off semimonthly meetings
  - Why: It is good to establish a healthy cadence with check-in points and being able to get visibility on how ticket, sponsorship and submissions are going.
* **T-7 Months to Event:** Ensure marketing is off and running
  - Why: Marketing is tricky, especially as a new event in a world where social media is quickly changing. Be sure to check out the [Visibility](#visibility) section for some tips and tricks.
* **T-6.5 Months to Event:** Ensure registration opens
  - Why: The more time the registration is open, the more potential visibility it gets. Be sure to checkout the [Setting Up Registration](#setting-up-registration) section for more information.
* **T-4.5 months before Event:** Initiate voting of submissions with the organizers
  - Why: Certain speakers submit to multiple events, require notice to their employers and/or require (international) travel. Getting voting done, on time, and in advance, allows those individuals to arrange the needful. Visit [Setting Your Program](#setting-your-program) for more information.
* **T-3.5 months before Event:** Launch the program
  - Why: Your program absolutely drives [visibility](#visibility) of your event. Your speakers can help market the event and at the same time would-be buyers might be waiting on your program before purchasing a ticket.
* **T-3.5 months before Event:** Ensure early bird closes
  - Why: Often paired with launching the program, you should close early bird. Reward those that made an investment to purchase a ticket to an event without a program and encourage your population next year to do the same.
* **One Month before Event:** Check on volunteers
  - Why: The team has been organizing, but you might need day of volunteers to help out. Check with your friends, family, colleagues, meetup participants, etc to see who can help in exchange for access to the event.
* **Month of Event:** Host
  - Why: Time to review the [Running the event itself](#running-the-event-itself) section for some guidance on the days of. GOOD LUCK, YOU GOT THIS!

---

## Handling Finances

Part of organizing the event is handling of the local event's money. This will be needed for:

- **Sponsorship**: Invoicing sponsors and processing their payments.
- **Registrations**: Collecting payments from attendees and, if required, issuing official invoices.
- **Expenses**: Paying for services such as venue booking, catering, merchandise, and more.

You cannot announce a date until you know you have a way to handle money. Realizing too late that you cannot process money has led to rescheduled or canceled events in the past.

The way many events have handled this is to find a local company that is willing to handle these logistics. In some countries, a local company is the only way to handle taxes. Some events register a local not-for-profit entity; there is no such central entity.

Depending on the size of the event, you might want to give them a Silver or Gold sponsorship in return. Make sure they understand they will need to generate invoices and accept/make payments with a fast turn-around.

If a local company is not an option, we've worked with a few companies in the past that are willing to help you for a fee:

- US Based: Laura from Conference Ops
- EU Based: Bernd from Netways or Yvo from [Stichting DevOps Foundation](https://devops.foundation/)

If you would like to use this method, contact us to get more details.

To make invoicing smooth, it helps to use that company's paypal account for registration (on eventbrite or equivalent) and to use paypal (or equivalent) buttons generated by them for sponsor packages.

---

## Selecting a date

Now that you have assembled your team, the next step is choosing a date. We usually take the following into consideration to find a good date:

- **Avoid Overlapping with Other DevOpsDays**: Ensure your event doesn't coincide with other DevOpsDays, especially those nearby. Think of it as load balancing. Check the [devopsdays.org](/) homepage for scheduled DevOpsDays events.

- **Local Event Conflicts**: Be mindful of other significant local events. Concurrent events could adversely impact your attendance.

- **Piggybacking Strategy**: Consider scheduling your event immediately before or after another major event. Attendees already in the area might find it convenient to attend another related conference.

- **Industry Calendar**: Keep track of major industry events. This helps in avoiding clashes and ensures you can attract the speakers and sponsors you desire.

- **Get Options**: Look at a few two-day choices you can accept. When talking to a venue, you might find that they can accommodate you better during some parts of the week than others. Sometimes they may be fully booked a given week, but available the next.

- **Avoid the weekend**: DevOps is part of people's work life, and the weekends are typically used for refreshing energy with family. We recommend choosing weekdays.

- **Venue and Financial Readiness**: Before announcing a date, ensure you have secured a venue and have a system in place to handle finances.

---

## Budgeting

Your budget is going to be refined and adjusted as you determine how many attendees you think you'll get and how much you're going to commit to spending up-front. You're not going to know all these numbers immediately, but it's valuable to start thinking about them as you're choosing a venue.

Categories to consider:

### Income Categories:

- **Sponsors**: Sponsorships can constitute a significant portion of your income—potentially up to 75%, depending on the sponsorship levels you establish.

- **Registrations**: Price your registrations to cover the per-attendee costs. Remember, this is a primary source of event revenue.

### Expense Categories:

- **Venue**: Cost of the location for talks and open space discussions.
- **Internet**: Provisioning internet access for attendees.
- **Media**: Costs for live streaming, recording, and captioning talks.
- **Catering**: Expenses for breakfast, coffee breaks, and lunches. Note that some venues might mandate using their catering services.
- **Evening Event**: Any activities or gatherings planned for the evening.
- **Merchandise**: Costs for T-shirts and other promotional items.
- **Badges & Lanyards**: Essential for attendee identification.
- **Signage**: Directional and informational signs for the event.
- **Speaker Expenses**: Hosting a speakers' dinner and small appreciation gifts.
- **Administrative Costs**: Insurance, taxes, and payment for accounting services.

**Important Reminder:** As you've seen in the [rules](#essential-rules-for-organizing) above, these events are not intended for individual or corporate profit. This includes unnecessary high personal expenditures for the benefit of organizers. We can't give precise numbers as to what qualifies as large amounts, since that would vary widely. Consider typical appropriate pricing for your region, and determine if you would find it to be unusually expensive.

Reasonable expenses for organizers:

- Travel & lodging to participate in your event
- Travel & lodging to participate in other DevOpsDays events for the purpose of making yours better
- Local transportation to & from your devopsdays event or planning meetings
- Clothing such as shirts to make the team stand out during the event
- Food and beverage for meetings before and after the event (at typical prices for the region)

Expenses for organizers which may be inappropriate:

- Gifts for organizers which are not given to attendees and/or speakers
- Expensive food and beverage for organizer meetings (outside of typical prices for your region)
- Travel outside of devopsdays participation needs (including luxury packages, travel to other events, etc).

When deciding on appropriate expenditures, check with your local team and reach out to the core team if you'd like guidance. Remember, these funds are intended to serve your community!

With all of these expenses, your event will likely be handling a lot of money. All major expenditures should be presented to and approved by your organizing team to help prevent conflicts of interest and provide oversight. Many organizing teams have implemented a process where individual organizers pay for expenses directly and request reimbursement from event funds. Reimbursements are only given if one or more additional organizers approve.

### Good Better Best Budget

First, a recommendation: Have a tiered budget for a Good, Better, Best. A Good version of your conference has the bare minimum. Maybe you don’t have food and send people out for a long lunch break, saving money on the food portion. Maybe you don’t do swag, or have pared-down badges. Whatever is a minimum viable event for you, have that planned. Then have a Better version that costs a bit more but has those nice to haves. Then have a Best version where you can add the fun things that make your event unique (e.g., a few years in Austin had a mariachi band come in for lunch) and start handing away tickets for free.

However you set up that tiered system for your event, have some go/no-go dates in mind for deciding when you can do each one. A Good vs Better event call might come in the month leading up to your event when you evaluate how much sponsorship money you have gotten in. This is why we say 80%+ of your event budget should come from sponsorship funds! If you set yourself up this way, you know you can put on a good event for the community regardless of how many people actually come, avoiding the need to cancel. Some cities might not have the luxury of having a Good version that is doable because all of the event venues are huge and require food and beverage contracts, for example, but if you can do it, do so.

---

## Selecting a venue

When you have some idea of when you want to run and how much you want to spend, you can start talking to potential venues.

Venue space considerations:

- A (big) room where everybody can sit comfortably and listen to the talks. This of course depends on the number of attendees you expect. Events have ranged from 70 to 700 people; a typical first-year event is often around 250 people. Assess the numbers usually attending your best-attended local meetups; you might get 2-3x that.
- A number of break-out rooms for the afternoon sessions:
  - it's nice to be able to put the chairs in a circle for better discussions
  - you can be creative by splitting the big room in smaller rooms but in practice, separate rooms are less noisy
  - we usually go for a few smaller (10-20) and few bigger (20-40) rooms
  - it's helpful if the rooms are close to one another, making it easier to move between open space rooms.
  - you can use the big room for open space too
- Room to hang out: not everybody attends sessions, and some are more interested in the hallway track. If there is some room for the food or a quiet room that's a plus.
- Sponsor space: Gold sponsors (at a minimum) get a table to have a presence. Make sure they have a nice spot at the event (typically close to the food or hangout space).

Aside from having enough space, there are other things to consider:

- Is the venue easily reachable by public transit and/or does it have sufficient parking, depending on the transit options in your local area?
- Are there (affordable) hotel accommodations nearby? (Running the event in a hotel makes it easy for out-of-town guests.)
- Does the venue allow for catering by other parties, or what are the options for food?
- Does the venue have enough wifi/internet capacity, or can more be added? Attendees will likely expect it.
- Can the video be streamed with enough capacity (if livestreaming is an option)?

A final big space differentiator is the pricing: as the price of devopsdays is typically relatively low, we look for affordable venue space:

- looking for (free) innovation centers or educational venues (universities...)
- finding local companies that can act as a host with their facilities
- finding a host sponsor that is willing to pay for a venue for you

Venue sponsors (especially if you're in their facility) may try to set limits on other sponsors; try to clarify this in writing ahead of time.

Don't overcommit on the number of people coming and don't do a pre-payment for the venue until you must. The same goes for food: it's always easier to add a few extra plates as opposed to having too much food ordered.

If you have some legal entity created for the event, have the details at hand (legal name, contact details, business number etc.). Some venues may require this information to put in a hold for your chosen date(s).

---

## Designing a local event devopsdays logo

The DevOpsDays logo, characterized by gears in the brain, has become an emblematic representation of the overall brand. For individual DevOpsDays events, incorporating elements from the primary logo is optional but highly recommended. The objective is to design a logo that uniquely represents your city.

### Inspiration from Past Logos:

- [Seattle 2016](https://www.devopsdays.org/events/2016-seattle/logo.png): Features the iconic needle using the gears set against a backdrop of mountains.

- [Chicago 2016](https://www.devopsdays.org/events/2016-chicago/logo.png): A local twist on the gears in the brain.

- [Cape Town 2016](https://www.devopsdays.org/events/2016-capetown/logo.png): Incorporates the distinctive Table Mountain skyline with the gears.

- [Amsterdam 2022](https://devopsdays.org/events/2022-amsterdam/logo.png): Incorporates the venue that the conference has used for all of the editions with the gears in the background.

### Design Exercise:

Engage your organizing team in a simple exercise: ask each member for a one-word description of your city. Compile, review, and vote on the suggestions. This exercise can inspire unique design elements for your logo.


---

## Announce your event

Once you have a time and place, you can announce your event to the world! It's great if you've had a chance to open your CFP and registration, though those aren't essential to announce your dates.

### Website

Update your data file for your event to add your start & end dates; this adds your event to the front page!

### Visibility

With the dispersal of tech communities from Twitter, a lot of community events are struggling to reach people. If you’ve been in the organizing community for a while or come from outside the tech world like some of us, a lot of these following tips will be very familiar to you.

- **Mailing Lists**:
  - Use your mailing list to announce ticket availability, early bird offers, agenda releases, and event countdowns. Keep emails informative and limit their frequency to maintain engagement.
  - If you don't have a mailing list, consider creating one. It's a powerful tool for ticket sales.

- **Engage Locally**:
  - Attend local meetups and networking events. Collaborate with local employers for promotions. Engage with local business associations.
  - Be proactive early in the ticket sales phase and maintain visibility until the event. Ensure your event is top of mind when potential attendees make decisions.
  - Avoid the misconception that a great agenda alone will attract attendees. Actively promote your event.

- **Collaborate with Other Events**:
  - Partner with local events that align with your theme. Offer mutual promotions.
  - If you're an established event, nurture relationships with local meetups. A thriving community is an active one.

- **Centralize Your Communication**:
  - Create a hub for all your communication channels, from mailing lists to social media profiles. Consider using QR codes for easy sharing.

- **Active Social Media Presence**:
  - Post regularly across all your social media platforms. Vary your posting times to maximize reach. Ensure your content is engaging and relevant to each platform's audience. Building an early presence can significantly boost your event's visibility.

---

## Distributing the work

Effective delegation is key to ensuring the smooth organization of your event. It's advisable to divide responsibilities among your organizing team to allow focused attention on different tasks. While the following distribution is a suggestion and not prescriptive, it can provide a starting point:

- **Talk Proposals**: Assign a person or a pair to manage and review talk submissions.

- **Ignite Proposals**: Delegate someone to handle ignite talk submissions.

- **Website Updates**: Designate a person or a pair to maintain and update the event's website.

- **Speakers**: Designate a person or pair to handle all speaker communications, so speakers have a clear point of contact ensuring that all their details are in place.

- **Sponsorships**: Assign responsibilities for liaising with sponsors, managing agreements, and ensuring deliverables.

- **Registration & Invoicing**: Designate someone to oversee attendee registrations, handle invoicing, and respond to related queries.

- **Venue & Local Logistics**: This includes managing the venue, catering, local arrangements, and hotel bookings.

- **Merchandise**: Assign a person or a pair to handle merchandise, such as t-shirts.

- **Evening Event Logistics**: Delegate responsibilities for organizing any evening activities or gatherings.


---

## Call for proposals

When you're ready to open your call for proposals, you'll want to include the date it opens, the date it closes, and the date by which people will be informed of your decisions. People will usually need at least 4-6 weeks to arrange for travel or time off, and you'll want your call to be open for at least a month, and you'll want at least 2 weeks to consider proposals and fill in any gaps. This means that you should open your CFP as soon as possible, and close it at least 6-8 weeks before your event.

Set an official theme if one beyond "devops" is desired. Within the context of this theme (but other proposals can work too):

- **no speaker spots can be bought by sponsors: not ever - period.**
- encourage new content: if the content has already been presented/published online we will consider it but it's less attractive. We want to stimulate the creation of new content as much as we can, as part of the goal is to record and spread the ideas from these sessions
- a good balance between local and out-of-town speakers. building the local community is just as important as bringing in new ideas from the wider community.
- favor new speakers: devopsdays is a supportive environment to encourage new voices in our space
- encourage bold subjects: we don't want to hear the same things over and over, do we? This avoids us becoming an echo-chamber of ideas
- shy away from specific technology/product talks: always try to elevate it to the conceptual part balance between technical and cultural content: for specific tools talk, there are open spaces not the main conference talks

Events usually have 4 30-min talks per day + ignite talks. Open space sessions are scheduled during the conference, not ahead of time.

For people to respond to the call for proposals you can use your city@devopsdays.org address, a web form, a third-party CFP tool, etc.

💡 **Pretalx** is an open source event management platform that handles the CFP, review & talk selection, scheduling, and more. The core organizers run an instance of [Pretalx](https://talks.devopsdays.org) that is made _freely available_ to the DevOpsDays community. You're under no obligation to use it—but you can if you want to! Please visit `#conference-services` on the global DevOpsDays Slack for more information.

Keep in mind that under-represented people in tech are much less likely to respond to your CFP. If you would like to encourage diverse viewpoints from voices other than those you hear the most often, you will need to reach out into those communities and encourage participation.

When looking for the best selection of speakers for your event, consider that expensive paid speakers are usually not the right fit for devopsdays, not because they are paid but because you're looking for speakers who will connect with your community throughout and beyond your event (not just show up for their talk). While paying directly often can bring with it complex issues around taxes, visas, and conflict of interest/employment agreements, covering speaker expenses through direct payment or with reimbursements is a good use of funds if available.

Talk selection doesn't have to be finished when you announce a schedule; it's ok to leave some space until the end. Still, we found that a finished schedule helps for attendees to make the case for them to attend. Remember that announcing only a few speakers can lead to unwarranted assumptions about your demographics.

Don't be surprised if proposals don't flow in quickly at first. People usually wait a bit before sending them in and need some extra calls. It's good to have a backup plan and contact individual speakers as well. You're not required to create your schedule solely from responses to your CFP. You should also provide speaker support according to your budget; at a minimum, all speakers should receive a free event ticket.

It works best if you dedicate a person/pair to respond to proposals/speakers and handle communication. This is best for both ignite and conference talks. Your local team is going to select your event's talks; you may ask other cities and/or the core organizers to weigh in to help you make a more balanced schedule having less overlap with other devopsdays, but that is up to you.

---

## Sponsorship packages

Overall [guidelines for sponsorship](http://www.devopsdays.org/sponsor/) are available. Sponsor packages are decided upon by the local organizing team for a city. The global core team does not offer sponsor packages, so any sponsors will work directly with the devopsdays event(s) they'd like to sponsor. You can use the examples in the template to help you make your decisions. Here are some typical offerings:

- Host (cost of venue): if a company sponsors the venue/food they will be acknowledged as a Host sponsor. Their logo will be directly visible on the main event page. They also have the opportunity to do a pre/post event meetup that will get promoted. And of course they get the same benefits as Gold and Silver sponsors
- Gold (around 5000 Euro/USD): 6 included tickets + a 'promo' spot during talk intermissions + the ability to have a simple table/sponsor presence at the venue.
- Silver (around 3000 Euro/USD): 4 included tickets, sometimes half a table depending on the local event's choices, sometimes just a single shared swag table.
- Bronze (around 1000 Euro/USD): 2 included tickets, sometimes can leave stickers/flyers/etc in public spaces
- Community Sponsor: get logo on the site and acknowledgement on social media. Used for media outlets and other conferences that are interested in cross-promotion with you. Sometimes they'll provide giveaways; usually you will not ask them to provide cash.

Devopsdays sponsorship prices are lower than at many other events. We want to avoid the traditional high-priced model for sponsors. We believe that the more companies that sponsor, the better: it amplifies the ideas and shows that many companies subscribe to the devops idea.

We believe the pricing is low compared to the value sponsors get. With that said, you may want to refrain from deviations from whatever standard package you publish in your sponsor prospectus. Exceptions take extra CPU cycles for your busy organizing team.

Other offerings might be:

- A lanyard sponsor
- A captioning sponsor
- An evening event sponsor
- A lunch or breaks sponsor

As a reminder:

- we do NOT offer speaker slots in return for sponsorship, and we want to maintain a standard policy on the pricing inside a given event.
- we do NOT ever give out or sell lists with contact details of attendees. You can share demographics in aggregate to give sponsors a feel for what kind of crowd will attend.

---

## Finding/Handling Sponsors

Sponsors pay the bills. You rely on them. So what can you do to find them and keep them satisfied?

- post on social media such as LinkedIn.
- find local meetups/companies that can help you.
- if you're looking for a contact of a specific company that sponsored before, ping the devopsdays core organizers to see if they can help.
- talk to the other organizers on Slack - many of them work at sponsors!
- write a blog on the website to promote your event.

Sponsors will usually ask you the following; best to have this information ready.

- Projected number of attendees
- Industries/Companies represented (share only in aggregate)
- What they get with what level of sponsorship (refer them to your sponsor page or prospectus)
- If they can buy a speaker spot (NO, but they can submit a talk and they can suggest open space topics onsite)
- If you provide a badge-scanning mechanism (you’re not obligated to, and we do not recommend providing one. For more information see the [QR codes section](#qr-codes-and-badge-scanning) below.)
- If they will have electricity & network at the venue (you should make sure the answer here is yes)
- If they can get a monitor (let them bring their own or rent one themselves)
- Where to ship their stuff and pick it up (don't take responsibility and let them handle that directly with the venue)
- What size of table they have? (find out from the venue and say they have to fit behind the one table)
- Where their table will be located (produce a map and optionally let them choose in the order they signed up)

From experience, we found that it helps to have a dedicated local organizer or two act as the contact with the sponsors to track prospects, payment, and giving them discount codes.

When they sponsor they need to supply:

- a logo for the website & a URL to link it to (if they're a new sponsor)
- an email address of a contact you can reach
- a Twitter handle for you to thank (very optional)
- the invoice details (including VAT in Europe)

In return you'll :

- send the official invoice (as applicable)
- once payment has been received, provide the registration discount code
- put the logo online (adding it if it's new) once they've paid
- link this sponsor from your page on the website once they've paid

On the registration page, have them select the special sponsor ticket with their discount. Many of the sponsor contacts are traveling from event to event, so you may have to follow up with them a bit so they sign up their crew in time for your badge printing. Make sure you make the invoices "due on receipt" or provide Paypal links so sponsors don't wait months to pay you.

### QR Codes and badge scanning

Sponsors will often ask if attendee badges can be scanned. Using QR codes to receive attendee information is quick and efficient for sponsors, but can be problematic for organizers and raise privacy concerns from attendees. We strongly discourage you from using scannable badges at your event.

There are two primary methods of badge scanning:

The first and most common method used by conferences is to have badges with codes that simply store a UUID. When sponsors scan badges with the designated app, they get the UUID. Later these are given to the organizers and used to generate a list of contacts. Many conferences use this because it protects attendee data and it also forces sponsors to use specific software or devices for an additional cost (more revenue for the event). However, this practice violates one of our DevOpsDays [rules](#essential-rules-for-organizing): we do NOT ever give out or sell lists with contact details of attendees.

The second method is to encode attendee data directly into the QR code (e.g. using the common VCF format). This method does not require organizers to distribute attendee information and allows sponsors to receive the information directly. But it also means that anyone with a QR code scanner can get that information and organizers will need to be extremely cautious that attendee information is not shared without their consent. Should you choose to implement this, the following are required:

- Attendees must be informed that their information will be encoded, including which details (email, phone, etc) will be included.
- Attendees must be informed of and provided a method to opt-out. This could be done during registration and QR codes not printed on the badges of those who opt out, or you could provide stickers to cover QR codes.
- Sponsors must be informed that badges may only be scanned with consent from attendees, and you must enforce this in practice.

Additionally we recommend that QR codes be printed on the back side of badges and that badges have two points of contact with lanyards to help ensure that QR codes are only visible when an attendee shares it.

Even with the [rules](#essential-rules-for-organizing) and guidance above, we strongly discourage the use of scannable badges.

---

## Tickets and pricing

We want to ensure that anyone who's interested in attending a devopsdays is able to, and that price is not a barrier. So, you'll want to keep your prices relatively low compared to many industry conferences.

Remember that the goal is building and maintaining a community, so as long as there are talks that people value and your event can be run within your budgetary constraints, make it easy for people to be there and let the rest fall where it falls. Finally, a good reminder to avoid using your personal finances to back the event.

### Free registration

There are some tradeoffs for free tickets. If you offer a lot of them or offer at random, understand that your actual attendance rate (i.e., checked-in people vs tickets sold) will be lower than if people pay for them.

We do not recommend making your event free. Experience has taught us that 'free' events come with a cost:

- about 30-40% of the people 'grabbing' a free ticket don't show up in the end
- this makes it harder to plan logistically: how many people will actually show up?
- people who could have attended are left out because the event appears 'full'

### Minimal Cost

Unless you’ve got a really strong audience and a fairly guaranteed attendance, you probably want to have 80% or more of your expected expenses covered by sponsors rather than ticket sales. That way, you can drop ticket prices to a nominal amount for locals, underrepresented communities, students, any reason that you feel like would benefit the community at large.

We recommend charging a minimal fee. This will keep your event accessible by making it cost a fraction of a typical high-priced conference ticket (perhaps 10% to 20% of what someone might pay to attend a commercial tech event in your region). This gives us the best of both worlds:

- The numbers are more accurate that way and more people feel happy about it.
- The financial risk for venue/catering cost is spread out

The downside is that this will require 'official' payment (sometimes with invoices):

- It requires time to create the invoices (although it's pretty much automated if you use [http://eventbrite.com](http://eventbrite.com))
- It might cost some accounting time because of the administration
- Specifically in the EU region:
  - if a EU company organizes an event in another country, it will have to request a Tax-ID in that other country. The costs of doing that would take a significant portion of the event money.
  - charges for the event needs to be in the currency of the country where the event will take place

Bottom line: if you want to charge a fee (which gives you better financial protection), make sure you have considered that in your handling of the money.

To encourage people to register early it's advised to offer discounted **early-bird** registration.

Because getting time away from work may already be a barrier for under-represented people in tech, offering free tickets to those individuals may make it more possible for them to secure workplace buy-in on their participation. If your budget has room, this is a good place to spend some of the extra money. Be sure you comply with all local laws that may apply in regards to demographic information and the uses thereof.

Getting tickets sold and people to show up has emerged as a difficult task, and it seems the primary reason for this difficulty is how reliant many of us became on Twitter for reaching various communities and gaining visibility.


### Timing

First things first: Yes, it is normal to get a spike in ticket sales in the last two weeks before a conference. You’re not alone. We’re just starting to experience that more often than not.

Generally, ticket sales get a number of spikes across the process:

- When tickets are first announced
- When early bird ticket sales end (if applicable)
- When speakers are announced
- When the agenda is announced (if separate)
- When ticket codes go out to sponsors
- When ticket codes go out to speakers
- When ticket codes go out to organizers and volunteers
- When a fiscal quarter rolls over (if applicable)
- After any reminder emails you send out to **anyone**
- In the last two weeks or so before the event

So, when should you get worried considering how the last two weeks are often the biggest spike? That’s a hard call as there are a lot of possible trouble spots, and it really depends on how we’ve set up our budget and whether the community will still enjoy a smaller conference. Really considering whether to cancel a conference if you haven’t seen a number of indicators ahead of time:

- Did we get a spike during the first ticket sales week? Was there a initial interest to know that we’ve got an audience.
- Did we sell a good bit of early bird tickets? What to look for is probably 15% of the expected ticket sales (e.g., of 400, 60 early birds). Again, this shows an audience and interest.
- Did the speaker/agenda announcement gain another decent spike (\~10% of expected sales)? This percentage will be spread out, and you can track it a bit if you use a specific ticket link or code for the posts that you and speakers send out for awareness.
- Did we hit about 40-50% of expected ticket sales **minus sponsors, speakers, organizers, and volunteers** by a month or so out? This percentage is a bit fluffy as it depends on how well you’ve been utilizing the [visibility tools](#visibility). If you forgot to send emails out or announced your agenda late, you probably are closer to 25-30% at this point. Go start leaning on those tools!!! Percentage may also be different if you’re hitting a point between fiscal quarters.

In addition, these numbers have shifted since the shift after lockdowns and the fractures in social media audiences; they may shift again!

### Ideas

If you’re struggling to sell tickets, try some of the following ideas:

- Create artificial scarcity. If your ticketing platform shows the number of tickets left and enables you to do this, try making small batches of tickets breaking up your general admission so it appears to anyone coming to your ticketing landing page that you’re almost sold out. For example, set up your tickets in batches of 10. As the ticket sales on one batch get toward 5 left, often ticket platforms will put an “almost sold out!!!” banner on the ticket page, which gets someone who is procrastinating to sign up quickly. As that bucket fills up, open the next batch of tickets.

- Reach out to local companies and offer them a discount or even a logo placement for a pack of tickets to send their employees. This idea does two things:

  - Often, if it's tied to an employer, people are better about showing up and staying through.
  - Some companies don't have interest in the booth (or can't get marketing money or staff for it), but they'd love to use some of their professional development funds to send a group to an event. If it's priced right, they don't even have to get higher approval and can give you a "yes" right away.

- Connect with a local startup incubator or accelerator and offer a discount code to their members or even a sponsorship to the event under the same “Sponsor package for ticket pack” idea as a local company. Startup C-suite folks love to come to these kinds of things, and you’re making bunch of friends for the future if or when one of those startups takes off.

- No local meetup? No problem! Start one. Even if it’s once a quarter, it starts building up an audience, and you get a sense of who is out there. You also get a built-in audience starter. Your meetup doesn’t even have to be a sage-on-the-stage meetup, but can be a networking event like coffee (or even [Lean Coffee](https://leancoffee.org/)). Those kinds of events are low prep for you and still get the community together and involved. You may even discover your next volunteer, organizer, or sponsor.

---

## Setting up registration

Once pricing has been decided you're ready to set up registration.

💡 **Pretix** is an open source ticketing and payment management platform that handles registrations, issuing tickets, waitlists, and more. The core organizers make a [Pretix instance](https://tickets.devopsdays.org) freely available to the DevOpsDays community. You're under no obligation to use it—but you can if you want to! Please visit `#conference-services` on the DevOpsDays Slack.

Alternatively, event organizers have had good experiences with [Eventbrite](http://www.eventbrite.com) integrated with [PayPal](http://paypal.com) payments. The Paypal account for payment needs to be linked directly to the company that does the invoicing.
(Note: if using Eventbrite, use Paypal, not "Eventbrite payment processing", or configure Eventbrite to disperse funds frequently so you don't have to wait until after your event.)

When setting up an event please consider the following:

- require information for each attendee (rather than for the buyer only)
- ask for employer name (optional) if people want it printed on their badge
- ask for T-shirt sizes (make sure you offer more than S-M-L-XL "unisex")
- (in Europe) ask if they require an invoice; if yes ask more details like VAT number if needed
- ask if they are interested in attending the evening event on the first night (optionally)
- disable the facebook integration
- don't allow people to see who is coming
- set up hidden ticket types for sponsors, organizers, speakers, etc
- create access codes for hidden ticket types

*Attendee email or direct-contact information should never be visible on the website or given out to vendors.* We value privacy and do not want attendees to be spammed.

---

## Setting your program

DevOps encourages the free flow of information, sharing experiences, and communication among peers. The recommended structure of events reinforces and amplifies these practices.

First time events should consult with a core organizer before altering the format. Doing so will ensure organizers benefit from our experience organizing and attending DevOpsDays all over the world.

The recommended format includes:

- talks in the morning: this follows the traditional format of a speaker or panel
- There is usually an introduction of about 15 minutes at the beginning of the conference from the organizers
- We find that talks of about 30 minutes have the right balance for content.
- You'll want to let the Gold sponsors speak for a minute between the 30-minute talks as that gives presenters time to set up their laptops
- allow for rest and discussion breaks
- You may break for lunch before the Ignite talks if that works best for your schedule.
- You'll have a set of several ignite talks: 5 minute talks with 20 slides that auto-advance (More detail on Ignite format)
- openspaces in the afternoon: a self-organizing part where everybody gets to propose a session (More detail on OpenSpace Format)

We provide a sample schedule in the event template.

You can usually draw on different sources to get speakers:

- the call for proposals
- ask on social media for people help spread your CFP announcement
- reach out to local meetups and organizations
- contact desired speakers directly

A few words of advice:

- No sponsor should be able to buy their way into the program. The schedule should be decided by your local organizers.
- Usually you will receive more tools talks vs cultural talks. We believe it's important to keep the balance right.
- Experience reports from local organizations are very helpful to attendees
- Tool talks should be at the conceptual level, not at the individual day-to-day level
- We prefer new speakers to come on board
- We prefer new content that was not presented yet (or was already recorded)
- Avoid inviting only prominent out-of-town speakers; we need to make sure that local content/ideas get picked up and spread to the community

---

## T-shirts and other swag

Printing shirts is entirely optional. Some events choose to donate to charity instead, while others go with a different kind of swag. If you decide to do shirts, bear in mind that at registration time, attendees can help you know what their body shapes and sizes mean for their preferences. Ask! Do not just guess, or you will find you've inadvertently made some attendees feel excluded.

While some shirt styles only go to 2XL, there will be attendees who (given the option) will choose 3XL, 4XL, or 5XL. Women will sometimes be happier with a fitted shirt (which is not the same as a "girl" shirt - those are typically a "junior" size). Avoid making your extended sizes and your fitted shirts significantly different from the "S-2XL unisex" shirt in color or design.

Keep in mind that you want your design to be appealing on a wide range of humans, not just those who happen to have smaller torsos without many curves. If you want soft, comfortable shirts that can fit many people, consider something like a tri-blend instead of a 100% cotton shirt.

If you're ordering shirts a few weeks before your event, consider padding the counts by up to 30% of each size/style. Having a few extra shirts is way better than anyone going home sad.

You may also want to order stickers or other items. Give yourself plenty of lead time.

### Swag vendor recommendations
Below are some *personal* vendor recommendations based on good past experience.

**T-shirts, hats, jackets etc.**: https://www.lock-promo.com/. Good quality, reliable delivery, very affordable. Used in: Chicago, Seattle

**Stickers and other printed materials**: https://www.minutemanpress.com/. Good quality, affordable pricing, VERY quick turnaround. Used in: Chicago, Seattle

---

## A word on hotels

There will almost certainly be a few speakers and sponsors who will travel to your event and will appreciate having a discounted rate at the most conveniently located affordable hotel you can manage.

If you're holding your event in a hotel, they will likely give you a "courtesy" room block that guarantees a discounted rate for your attendees.

If you're not using the hotel's meeting rooms and catering, they may want you to guarantee at least 80% or so of the room nights you block off for your group will be used. This isn't as risky as it sounds if you want to start with a very small block (5 rooms or so, for the night before day one and the night between day one and day two - don't expect people to stay overnight the evening of day two). Usually the hotel will also let you add more rooms to the block as it fills.

If you make your group rate code available on your website, keep on eye on who registers with it (the hotel should be able to provide this info), and ensure that you have enough space for all the out-of-town people you expect. You may have to remind some people to register, as the group rate usually expires a month or so before an event.

---

## Venue logistics

You will want a local organizer acting as the primary contact person with the venue. You will need to arrange things like the chair layout, table arrangement, audio-visual needs, etc. The catering deadline (by which time you'll need to provide numbers) is usually a couple weeks or so before your event.

Make sure you ask the venue how soon sponsors can start shipping items there, get the correct address/routing info, and ask what fees they might incur. Find out exact times you'll have access to your space, and find out whether you'll have secure overnight storage (because both you and definitely the sponsors will need that).

Your venue may require some form of insurance. See what they require, and look into something like TULIP event insurance depending on what's available for your local area.

You will want some members of your local organizing team to be tasked with...

- finalizing venue details
- running the registration check-in desk
- preparing and posting signs
- printing and assembling badges
- etc.

---

This part gets a bit into choices you as an organizing team need to make.

## Evening event

Most devopsdays host a social gathering the evening after the first day of the two-day event. This is a great place for attendees to get to know one another better. There's some sort of food and drink, but usually a full dinner is not provided. Having fun activities to participate in (bowling, trivia, other games, etc) is recommended. While alcohol is enjoyable, it should not be the only activity, and it's important to remember the needs of attendees who aren't choosing to drink alcohol. It's also not required for your event to pay for any alcohol; if it's not free, it is more socially acceptable to refrain from choosing it.

Often the evening event will be at a different location than the venue for the talks. It's a good idea to make it within walking distance or provide transportation if possible. Running it at the same venue can lead to higher attendance, especially if you provide some content such as the Ignite talks.

Offering a family-inclusive evening event will allow more people to participate; unlike at a destination conference, many local devopsdays events occur within commuting distance. While people who work outside the home typically have a daycare arrangement in place, it probably does not extend into the evening.

---

## Running registration

You are going to want a place where people can check in and get their badges when they arrive. They may also pick up T-shirts there. If you use Eventbrite, there is an app which makes check-in much easier than using paper, but it may not be necessary to do more than just give the badges out (as you can see which ones are left at the end.) Sort the badges ahead of time alphabetical by last, then first name. If you separate out the sponsor ones, keep in mind that some people might not realize if they fell into the "sponsor" tickets or a "regular attendee" ticket according to how their company registered them.

Sort shirts by style and size, and then let attendees just tell you which size they wanted. If you built in enough margin of error, this won't cause any problems and will be the most efficient way to deal with it, rather than looking up what they ordered.

You may want to staff the registration desk at all times if you want to be able to help attendees with their questions. As the conference organizers may want to attend talks, it's wise to call in favors from friends and family who aren't interested in the subject matter of the talks and won't mind missing them all. Make sure any such staff have a way of getting ahold of the organizer on duty for any questions they can't answer on their own.

---

## Video recording and streaming

Whether or not you're able to livestream, it's important to record all the talks. This is invaluable for your speakers, and it's great for the community. Your audiovisual company should be able to provide a camera or cameras and record the feed off the board into a computer. If you have no budget for recording talks, a smartphone is better than nothing.

If you're going to livestream, rehearse ahead of time, and then assign at least one person to run it during the event.

- Some events stream directly to YouTube. Be very careful not to accidentally include any background music, or YouTube will take your stream down.
- For some past events we have also used [livestream](https://new.livestream.com/live-video-tools#mobile-broadcasting).

Some services exist to record and stream; check with others in your region to see what they're using.

---

## Running the event itself

- Prepare and share a team playbook of exactly what is scripted to happen when.
  - Assign one or more MCs to kick off and orchestrate the event
  - Assign people to introduce specific speakers
- Consider assigning "on duty" shifts so one person isn't the SPOF for all last-minute decision-making in crisis mode

---

## Running Ignites

Running Ignites can be a challenge: people tend to submit them last minute, or they didn't understand the format too well. Here are a few tips on making this process run more smoothly:

- Require the Ignite presenters to send the slides ahead of time
- Inform the Ignite presenters that there are no presenter notes during their talks
- Animations (gifs or slide transitions) and videos may not work due to the conversion process
- PDF is the easiest format to collect all presentations
  - An option is to use a Dropbox shared directory
- You can run either :
  - `impressive -a 15` [http://impressive.sourceforge.net/](http://impressive.sourceforge.net/)
  - Adobe Acrobat Reader in [auto-advance mode](http://malektips.com/adobe_reader_7_0019.html); ask presenters to add empty slide to the end as Reader doesn't exit after the last slide
- Don't let them run on their own laptops
- Use a dedicated laptop (avoid any popups etc...)
- Mention again on the day itself.
  - "Just so you know, your slides will auto advance every 15 seconds; you can't advance them yourself"
  - Remind the presenters again that there are no presenter notes
- Have Ignite presenters queue next to the stage and either:
  -start the slidedeck for them.
  - or even build all slides in Slidedeck and build in a bio slide as a interludium and have that autoadvance as well

[Ignite format page](/ignite-talks-format/)

If you're looking for a way to fill in for more ignites (i.e. pad the schedule), or just to have some fun, "Ignite Karaoke" is a great way to engage with your audience. The idea is straightforward: one minute per participant, four slides of 15 seconds each, where each slide has a title and a "funny" picture. It's great for some laughs and engagement—people really enjoy it! JJ Asghar maintains a tool to help create these slides if you want to experiment with this fun ignite format: [GitHub repo](https://github.com/jjasghar/ignite_karaoke)

---

## Running Open Space

There is a wealth of detail on the [Open Space format page](/open-space-format/). Consider both a physical schedule grid (often assembled via a whiteboard and oversized sticky notes) and an easily-updated shared spreadsheet you can link from your event page. Also consider posting the open space choices for a specific room outside that room.

---

## Website updates

- The core organizers want the devopsdays website to be a central reference for all content produced during your event.
  - Embed links to each of your speakers' slides on your program page. (Ask them to post slides on slideshare, speakerdeck, etc.)
  - Upload the videos to youtube or your video site of choice, then embed them on your program page.
- Surveying your attendees and blogging about the results is optional, but strongly recommended.

---

If you have further questions, chat with the other organizers on Slack, and have fun! It's going to be great!
