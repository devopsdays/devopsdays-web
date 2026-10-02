---
name: add-organizer
description: Use when adding, removing, or updating a local organizer on a devopsdays event team - covers the team_members entry, the photo, and the mandatory email to info@devopsdays.org that gates the merge.
---

# Add or update a local organizer

Organizers live in the `team_members:` list in `data/events/<YYYY>/<city-slug>/main.yml`, with
photos in `assets/events/<YYYY>-<city-slug>/organizers/`.

## Read this before starting

**Adding or removing an organizer requires an email to `info@devopsdays.org`** containing the
full names, email addresses, and employers of the people added or removed. The same action adds
them to the mailing list and Slack, so **a maintainer will hold the merge until that email is
sent.**

This is not a formality and it is not something the PR can do on its own. Tell the person
explicitly, and put it in the PR body. Purely editing an existing organizer's bio, photo, or
links does not need it.

## The entry

Only `name` is required. Everything else is optional.

```yaml
team_members:
  - name: "Jane Doe"
    pronouns: "she/her"
    role: "Sponsor Coordinator"
    employer: "Acme Anvil Co."
    bio: "Jane has been running operations teams since 2009. Markdown works here."
    image: "jane-doe.jpg"
    twitter: "janedoe"
    github: "janedoe"
    gitlab: "janedoe"
    twitch: "janedoe"
    linkedin: "https://www.linkedin.com/in/janedoe"
    facebook: "https://www.facebook.com/jane.doe"
    mastodon: "https://hachyderm.io/@janedoe"
    bluesky: "https://bsky.app/profile/janedoe.bsky.social"
    website: "https://janedoe.example.com"
```

- `role` defaults to "Organizer" when omitted.
- `twitter`, `github`, `gitlab` and `twitch` are bare usernames, no `@`.
- `linkedin`, `facebook`, `mastodon`, `bluesky` and `website` are full URLs.
- `image` is a bare filename resolved against `assets/events/<YYYY>-<city>/organizers/`.

`gitlab` and `twitch` do render for organizers even though `themes/devopsdays-theme/reference.md`
has historically omitted them from the team member table.

## YAML quoting, which is where this breaks

Bios are free text and routinely contain apostrophes and quotation marks. Use double quotes and
escape any internal double quote, or use a block scalar for anything long:

```yaml
    bio: >-
      Jane's been doing this a while. She says things like "it depends" a lot,
      and she is usually right.
```

`utilities/add_organizers.sh` interpolates raw values into double-quoted YAML, so a bio with a
quote in it produces an invalid file. Writing the entry directly avoids that.

## The photo

```bash
mkdir -p assets/events/2026-boston/organizers
cp ~/Downloads/jane.jpg assets/events/2026-boston/organizers/jane-doe.jpg
```

- JPG, at least 300×300, ideally 600×600 square
- Lowercase filename and extension, or the `Lint Filenames` CI job fails the PR
- Then reference it: `image: "jane-doe.jpg"`

Note `utilities/add_organizers.sh` creates the directory under `static/` but copies into
`assets/` — under `set -e` it dies partway through. Create the `assets/` directory yourself.

## Removing an organizer

Delete their `team_members` entry. Leave the photo file — other years may reference it, and
removing it gains nothing. The `info@devopsdays.org` email is required for removals too, so the
global team can take them off the mailing list and Slack.

## Organizer email addresses

`organizer_email` in `main.yml` is the team's public contact and is normally
`<city-slug>@devopsdays.org`. `proposal_email` is the equivalent for CFP submissions. Neither is
a personal address.

## Verify

- The event still has `organizer_email` set
- Every `image:` names a file that exists in `organizers/`
- The YAML parses — a bad quote in a bio breaks the whole event
- Preview `/events/<YYYY>-<city>/contact/`, which is where the team is normally listed

## Submit

Follow `.claude/skills/submit-changes/SKILL.md`. The PR body **must** include an
`## Organizer email` section when people were added or removed, stating that the email to
`info@devopsdays.org` is required before merge.

PR title: `[BOS-2026] Add Jane Doe to the organizer team`.
