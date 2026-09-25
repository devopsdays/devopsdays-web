---
name: build-program
description: Use when building or editing a devopsdays event's schedule - adding talks, ignites, open spaces, breaks, and evening events to the program, or moving time slots around.
---

# Build or edit the program

The schedule lives in `data/events/<YYYY>/<city-slug>/main.yml` under two keys: `program:` and
`ignites:`. A handful of events split it into a sibling `program.yml` instead — check for that
file first, and if it exists, edit it rather than `main.yml`.

## The rule that catches everyone

For `type: talk` entries and for every `ignites:` entry, **`title` is a filename slug, not display
text.** It must match a file in `content/events/<YYYY>-<city>/program/` with `.md` stripped.

```yaml
  - title: "jane-doe"        # -> content/events/2026-boston/program/jane-doe.md
    type: talk
```

The real talk title comes from that file's `Title` field. A `title` that matches nothing produces
a broken entry and **nothing fails** — no error, no warning.

For every other type (`custom`, `open-space`), `title` *is* the display text:

```yaml
  - title: "Registration & Breakfast"
    type: custom
```

## Entry fields

| Field | Required | Notes |
|---|---|---|
| `title` | yes | A slug for `talk`/`ignite`, display text otherwise |
| `type` | yes | `custom`, `talk`, `ignite`, `workshop`, or `open-space` |
| `date` | yes | `YYYY-MM-DD`, must fall inside the event's `startdate`/`enddate` |
| `start_time` | yes | `"08:00"`, quoted, 24-hour |
| `end_time` | yes | Same. `"late"` is accepted for evening events |
| `comments` | no | Extra note under the entry. Markdown works |
| `custom_url` | no | Point the entry at an external URL |
| `background_color` | no | Hex in quotes, e.g. `"#FFFA99"`. Check it against the text color |

`type` sets the color: `custom` grey, `talk` blue, `ignite` green, `workshop` light blue,
`open-space` orange. `talk`, `ignite` and `workshop` also become links to the page named in
`title`.

## Ignites

Ignites get their own list in addition to a program entry for the block:

```yaml
ignites:
  - title: "sam-patel"
    date: 2026-10-19
  - title: "wil-mckenney"
    date: 2026-10-20
    block: "ignite-1"
```

Each `title` is a file in `program/`, same as talks. Use `block:` only when one day has more than
one group of ignites.

## A worked shape

```yaml
program:
  - title: "Registration, Breakfast, and Sponsor Booths Open"
    type: custom
    date: 2026-10-19
    start_time: "08:00"
    end_time: "09:00"
  - title: "Opening Welcome"
    type: custom
    date: 2026-10-19
    start_time: "09:00"
    end_time: "09:15"
  - title: "jane-doe"
    type: talk
    date: 2026-10-19
    start_time: "09:15"
    end_time: "09:45"
  - title: "Ignite Talks"
    type: ignite
    date: 2026-10-19
    start_time: "13:00"
    end_time: "13:30"
  - title: "Open Space 1"
    type: open-space
    date: 2026-10-19
    start_time: "14:00"
    end_time: "14:45"
  - title: "Evening Event"
    type: custom
    date: 2026-10-19
    start_time: "19:00"
    end_time: "late"
    comments: "At the [Pony Club](https://example.com), 1005 Ponyville Drive"
```

A typical day is four talks, an ignite block, three open spaces, and breaks between.

## The program page

`content/events/<YYYY>-<city>/program.md` must exist:

```
+++
Title = "Program"
Type = "program"
Description = "Program for devopsdays <City> <YYYY>"
Icons = "false"
+++
```

Set `Icons = "true"` once slides and videos are attached — see
`.claude/skills/add-talk-media/SKILL.md`.

Add the nav entry in `main.yml`:

```yaml
nav_elements:
  - name: program
```

Do this by hand. The `sed` in `utilities/add_program.sh` meant to uncomment it no longer matches
the template and silently does nothing.

## Before you have speakers

Placeholder slugs (`talk-1` … `talk-8`) are the convention; replace them as speakers are
confirmed. They will render as broken links until they match real files, which is expected during
planning but must be cleaned up before the event.

## Verify

Check every talk and ignite slug resolves to a file:

```bash
# list slugs referenced by the program, and what actually exists
grep -E '^\s+- title: "' data/events/2026/boston/main.yml
ls content/events/2026-boston/program/
```

Then confirm:

- Every `date` falls within `startdate`..`enddate`
- Times are quoted strings, not bare numbers — `08:00` unquoted is not what you want
- No overlapping slots unless the event genuinely runs tracks
- If you appended a block, there is only **one** `program:` key in the file.
  `utilities/add_program.sh` appends blindly and a second run produces a duplicate key

Preview `/events/<YYYY>-<city>/program/` and click through to a talk.

## Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[BOS-2026] Add day one program`.
