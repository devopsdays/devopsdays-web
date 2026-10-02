---
name: cancel-event
description: Use when a devopsdays event that is already listed on the site has to be cancelled or postponed, and its pages need to stop advertising dates, registration, and sponsorship.
---

# Cancel an event

The goal is that the event stops appearing as upcoming, its dead pages redirect instead of 404ing,
and anyone who lands on it sees why.

The site filters events with `cancel: "true"` out of the upcoming, all-events and TBD listings.
The value is a **case-sensitive string in quotes**.

There is no script for this. Work through it by hand.

## 1. Trim the pages

Keep three: `welcome.md`, `contact.md`, `conduct.md` (plus translated conduct pages if the event
has them). Delete the rest from `content/events/<YYYY>-<city-slug>/`:

```bash
cd content/events/2026-ponyville
rm -f location.md propose.md registration.md sponsor.md program.md speakers.md talks.md
rm -rf program speakers
```

## 2. Redirect the deleted pages

Anyone with a bookmark should land on the welcome page, not a 404. Add aliases to `welcome.md`'s
frontmatter, one per page you deleted:

```
+++
Title = "devopsdays Ponyville 2026"
Type = "welcome"
Description = "devopsdays Ponyville 2026 has been cancelled."
aliases = [
    "/events/2026-ponyville/",
    "/events/2026-ponyville/location/",
    "/events/2026-ponyville/propose/",
    "/events/2026-ponyville/registration/",
    "/events/2026-ponyville/sponsor/",
    "/events/2026-ponyville/program/",
    "/events/2026-ponyville/speakers/"
]
+++
```

Then replace the body with the cancellation notice. Say what happened, and whether people should
expect the event to return, and how to reach the team. This is the page everyone will see.

## 3. Edit the data file

In `data/events/<YYYY>/<city-slug>/main.yml`:

```yaml
cancel: "true"

startdate:
enddate:
cfp_date_start:
cfp_date_end:
cfp_date_announce:
registration_date_start:
registration_date_end:

location:
location_address:

sponsors_accepted: "no"

description: "devopsdays Ponyville 2026 has been cancelled."

nav_elements:
  - name: contact
  - name: conduct
```

Blank the dates rather than deleting the keys. Trim `nav_elements` to the pages that still exist —
leaving a nav entry for a deleted page produces a dead link.

Leave the `sponsors:` list alone. Sponsors who supported the event stay credited.

## 4. The build trap

**If `location.md` used `{{< event_map >}}` and you blank `coordinates`, the build breaks.** The
shortcode reads `coordinates` before checking whether there is an address, so a blank value is a
hard failure, not a graceful skip.

Deleting `location.md` in step 1 avoids this entirely. If the event keeps a location page for some
reason, remove the `{{< event_map >}}` shortcode from it.

## 5. The redirect

Leave the city's line in `static/_redirects` pointing at this event. When the city runs again,
`new-event` bumps the year. Pointing `/ponyville/` at a cancelled event is better than pointing it
at nothing.

## 6. Verify

- `cancel: "true"` is quoted, lowercase `true`, and spelled `cancel` not `cancelled`
- The event is gone from the front page and `/events/` after a rebuild
- Every alias you added corresponds to a page you actually deleted
- Every remaining `nav_elements` entry has a page
- No `{{< event_map >}}` survives with blank coordinates
- Preview `/events/<YYYY>-<city-slug>/` and try one of the old URLs

## 7. Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[PONY-2026] Cancel Ponyville 2026`.

This is a visible change affecting people who bought tickets or submitted talks. Make sure the
organizers have actually announced it before the PR merges.
