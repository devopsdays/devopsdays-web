---
name: add-talk-media
description: Use when a devopsdays event has finished and the slides or video recordings need to be attached to the talk pages, or when a speaker sends a link to their deck afterwards.
---

# Add slides and video to talk pages

After the event, media gets attached to each talk page at
`content/events/<YYYY>-<city>/program/<slug>.md` by adding frontmatter fields. No new files, no
new pages.

## Fields

Note which take a bare ID and which take a full URL — this is the thing people get wrong.

| Field | Value | Example |
|---|---|---|
| `youtube` | video ID only, not the URL | `youtube = "8ClZXJsgpHY"` |
| `vimeo` | video ID only | `vimeo = "219025568"` |
| `slideslive` | presentation ID only | `slideslive = "38915149"` |
| `googleslides` | presentation ID only | `googleslides = "1QnakgUC8AaNydPZCmKGYYja8gs2WoHbHRSjioIVdD9g"` |
| `notist` | username and deck id | `notist = "mattstratton/jLwszn"` |
| `speakerdeck` | full URL | `speakerdeck = "https://speakerdeck.com/user/talk-name"` |
| `slideshare` | full URL | `slideshare = "https://www.slideshare.net/user/talk-name"` |
| `pdf` | full URL | `pdf = "https://example.com/slides.pdf"` |
| `slides` | full URL, for anything else | `slides = "https://example.com/my-slides"` |

For a YouTube URL like `https://www.youtube.com/watch?v=8ClZXJsgpHY`, the ID is the `v=` value.
For `https://youtu.be/8ClZXJsgpHY`, it is the last path segment.

## Example

```
+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Two AI Reviewers Walk Into a Pull Request"
Type = "talk"
Speakers = ["dan-morgan"]
youtube = "8ClZXJsgpHY"
speakerdeck = "https://speakerdeck.com/danmorgan/two-ai-reviewers"
+++

The abstract stays exactly as it was.
```

Add the fields; do not rewrite the abstract.

## Turn on the program page icons

Once talks have media, set `Icons = "true"` in `content/events/<YYYY>-<city>/program.md` so slide
and video icons show next to each entry:

```
+++
Title = "Program"
Type = "program"
Description = "Program for devopsdays <City> <YYYY>"
Icons = "true"
+++
```

## Do not upload the files

Slides and recordings do not belong in this repository. Link to YouTube, Speaker Deck, Notist or
similar. If there is genuinely nowhere else, put the file in
[devopsdays-assets](https://github.com/devopsdays/devopsdays-assets) and link to
`https://assets.devopsdays.org/...`, or use the `asset` shortcode:

```
{{< asset year="2026" city="boston" name="slides" file="jane-doe-slides.pdf" >}}
```

`.github/workflows/large-files.yml` flags PDFs and files over 3 MB on the PR.

## Video on a platform with no field

If the host is not in the table above, embed it in the body of the talk page inside a `<div>`.
Raw HTML in content is enabled for this site.

For SlidesLive specifically, use the `slideslive = "ID"` field instead — it has been supported for
a while, and `utilities/README.md` still shows an older hand-pasted embed script that you do not
need.

## Doing a whole event at once

Work through `content/events/<YYYY>-<city>/program/` file by file. Match talks to recordings by
speaker name, and check the talk title against the video title before committing — the usual
failure mode here is an off-by-one that attaches the wrong video to the wrong speaker.

## Verify

- IDs are IDs and URLs are URLs, per the table
- Preview a talk page and confirm the video actually plays and the slide link resolves
- Check the program page shows icons if you set `Icons = "true"`

## Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[BOS-2026] Add videos and slides for all talks`.
