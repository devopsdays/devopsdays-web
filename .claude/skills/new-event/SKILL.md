---
name: new-event
description: Use when a city is setting up its devopsdays event for a new year and needs its data file, pages, redirect, and asset directories created from scratch.
---

# Set up a new event

Creates the four things a new event needs: a data file, a set of pages, a vanity redirect, and
directories for images.

## Gather

- Year (`<YYYY>`) and city as it should be displayed (`Boston`, `Ciudad Autónoma de Buenos Aires`)
- Whether the city has run an event before — that changes the redirect step
- Social handles, if known. All optional and all editable later

## The slug

`<city-slug>` is the city lowercased, accents folded, non-letters dropped, spaces to hyphens:
`São Paulo` → `sao-paulo`, `Ciudad Autónoma de Buenos Aires` → `ciudad-autonoma-de-buenos-aires`.

The event is then referred to two different ways, and both are used:

- `<YYYY>/<city-slug>` for the data directory
- `<YYYY>-<city-slug>` for everything else (the "event slug")

## 1. Check it does not already exist

```bash
ls -d data/events/<YYYY>/<city-slug> content/events/<YYYY>-<city-slug> 2>/dev/null
```

If either exists, stop — this event is already set up.

## 2. Data file

```bash
mkdir -p data/events/<YYYY>/<city-slug>
cp utilities/examples/data/events/main.yml data/events/<YYYY>/<city-slug>/main.yml
```

Then replace the placeholders throughout the copied file:

| Placeholder | Replace with | Example |
|---|---|---|
| `yyyy-city` | the event slug | `2027-boston` |
| `YYYY` | the year | `2027` |
| `City` | the display city | `Boston` |
| `yourlocation` | the venue, or the city for now | `Boston` |
| `devopsdayscityabbr` | the event's social handle | `devopsdaysbos` |
| `city_email` | the city slug | `boston` |

Leave `startdate`, `enddate`, and the CFP and registration dates **blank** until they are real.
An event with no `startdate` shows on the site as upcoming-date-TBD, which is correct.

Two things that will break the build later if you get them wrong:

- `name:` must be the event slug, in quotes: `name: "2027-boston"`. It is the only field with a
  hard error guard in the theme.
- If you set `startdate`, you must also set `enddate`. Several templates read `enddate`
  unguarded inside an `if startdate` block.

## 3. Pages

```bash
cp -r utilities/examples/content/events/yyyy-city content/events/<YYYY>-<city-slug>
```

That gives nine pages: `welcome.md`, `contact.md`, `conduct.md`, `conduct-fr.md`,
`conduct-pt-br.md`, `location.md`, `propose.md`, `registration.md`, `sponsor.md`.

In every one of them, replace `CITY` with the display city and `YYYY` with the year — including
in the `Description` lines, which are used for social sharing and SEO.

In `welcome.md`, also replace `yyyy-city` in the `aliases` line with the event slug.

`welcome.md` ships with most of its body commented out — the logo, location, register, propose,
program, speakers and Twitter blocks. Uncomment each as it becomes real. Do not uncomment the
program and speakers blocks before those pages exist.

Delete `conduct-fr.md` and `conduct-pt-br.md` if the event does not need them.

## 4. Redirect

`static/_redirects` gives every city a vanity URL: `devopsdays.org/<city-slug>` points at the
current year's event.

If the city has run before, find its existing line and **change only the year**, keeping the line
where it is:

```
/boston/*		/events/2027-boston/:splat		302
```

If it is a new city, append a new line at the end of the file. Netlify matches first-to-last, so
any one-off path redirect for that city must stay above its wildcard line.

## 5. Asset directories

```bash
mkdir -p assets/events/<YYYY>-<city-slug>/speakers
mkdir -p assets/events/<YYYY>-<city-slug>/organizers
mkdir -p static/events/<YYYY>-<city-slug>/sharing
```

Git does not track empty directories, so these only land in the PR once they contain something.
Create them now so later steps do not fail.

Images that should follow when they exist:

| File | Requirements |
|---|---|
| `assets/events/<slug>/logo.png` | Must be named exactly `logo.png`. Used on the event page and the site front page |
| `assets/events/<slug>/logo-square.png` | Optional. Overrides the auto-crop on the front page. PNG, at least 300×300, ideally 600×600 |
| `static/events/<slug>/sharing/sharing.jpg` | Social card. At least 1200×630, ratio 1.91:1. Then set `sharing_image: "sharing.jpg"` in `main.yml` |

## 6. Organizers, and what comes next

The generated `main.yml` has placeholder organizers (`John Doe`, `Jane Smith`, `Sally Fields`).
**Replace them with the real team before opening the PR** — see
`.claude/skills/add-organizer/SKILL.md`, and note the required email to `info@devopsdays.org`.

Trim `nav_elements:` to the pages that actually exist. A new event normally starts with
`sponsor`, `contact` and `conduct`, and adds `propose`, `location`, `registration`, `program` and
`speakers` as they become real.

## 7. Verify

- `name:` in `main.yml` matches the event slug exactly
- No `YYYY`, `CITY`, `City`, `yyyy-city` or `devopsdayscityabbr` placeholders remain:
  ```bash
  grep -rnE 'YYYY|yyyy-city|devopsdayscityabbr|city_email|yourlocation' \
    data/events/<YYYY>/<city-slug>/ content/events/<YYYY>-<city-slug>/
  ```
- The placeholder organizers are gone
- `static/_redirects` has exactly one wildcard line for this city
- Preview `/events/<YYYY>-<city-slug>/`

## 8. Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[BOS-2027] Set up Boston 2027`.
