# Utilities
These scripts help devopsdays organizers manage their events.

## Contributing

The technical details and guidelines for contributing to this repository are outlined in [CONTRIBUTING.md](../CONTRIBUTING.md).

Full reference of all fields and features is located in [REFERENCE.md](https://github.com/devopsdays/devopsdays-web/blob/master/themes/devopsdays-theme/REFERENCE.md) in the theme directory. 

New utilities and updates to existing utilities are welcome, as are suggestions for default content. Add new script in [contrib](contrib/).

If you want others in your team to be able to preview/approve changes before they are merged, we recommend you follow [these steps](https://github.com/devopsdays/devopsdays-web/tree/master/utilities/docs/workflow) to work with your own repo prior to submitting a PR.

## Events

Use [add_new_event.sh](add_new_event.sh) to add a new event.

1. If your city name contains spaces or special characters, the script will remove them for purposes of the event stub, which will be used in the URL and have a name like `yyyy-city`.
1. The script will create a data file for your event in `data/events/yyyy-city.yml`. This is where you will configure many of your updates and customizations. In particular, you need to list your local organizer team here.
1. The script will populate your event directory in `content/events/yyyy-city` with default content. You should edit it as desired.
1. Once you have created a logo graphic, place it in `static/events/yyyy-city/logo.png`. (The file MUST be called `logo.png`.) The sample welcome page has a commented-out element to display a logo named in this way. For front-page use, you also need a square version in `static/events/yyyy-city/logo-square.jpg` (url configurable in your datafile).

## Google Analytics

If you have set up a Google Analytics account for tracking your specific event, you can enable tracking for your event pages by updating the `ga_tracking_id` field in your `YYYY-CITY.yml` file. Example: `ga_tracking_id: "UA-74738648-1"`

### Event Square Logo

To customize the logo that appears on the root of devopsdays.org, place a square file (jpg format only) in `static/events/yyyy-city`. It must be named `logo-square.jpg` and should be a minimum 300px x 300px, but optimizally should be 600px x 600px. 

### Reference Content

* The gears logo is available in AI, PSD and SVG format in the repo at [devopsdays/devopsdays-assets](https://github.com/devopsdays/devopsdays-assets)
* Prospectuses for other events you may want to reference are also available in the [devopsdays/devopsdays-assets](https://github.com/devopsdays/devopsdays-assets) repo.

## Sponsors

Many sponsors are sponsors for multiple devopsdays. If a sponsor listing already exists with the correct information, you can just add them to your datafile.

The sample datafile has some sponsor levels pre-populated; edit as desired. You will want to decide what's in your sponsor packages before accepting most types of sponsors (other than Community).

#### Sponsor URL override
Sometimes, an existing sponsor will want an event-specific URL for your event. Rather than creating a new sponsor, you can add an optional `url` field to the sponsor in your event data file to override the default URL for that sponsor. For example:

```
sponsors: 
  - id: victorops
    level: social
  - id: netapp
    level: gold
    url: http://netapp.com/?tracking=myeventthing
  - id: thoughtworks-gocd
    level: gold
```

### Updating a sponsor

If you want to update a sponsor, keep in mind that we don't want to retroactively change history for past events. See this [previous discussion](https://github.com/devopsdays/devopsdays-web/pull/503) for guidance. Basically you need to preserve past history before defining a changed default.

Note that if a sponsor asks for an update affecting all future events, the shared sponsor entry will be changed for all events without any intervention needed from local organizers who have listed that sponsor. This is a benefit to using the shared sponsor entry.


### Adding a new sponsor

Use [add_sponsors.sh](add_sponsors.sh) to easily add new sponsors. (Only do this if the sponsor doesn't already exist.)

1. Sponsors need a file in the data directory, as such: `data/sponsors/sponsorname.yml`. Before creating a new one, look to see if there is an old one, possibly with a date prepended. If it has the right URL and logo, you should use it instead of creating a new one.
1. Put the images for your sponsors in the `static/img/sponsors` directory. They need to be PNG files and named exactly after the name of the sponsor in your event file (and the corresponding sponsor data file), i.e., `static/img/sponsors/sponsorname.png`.
1. Add the new sponsor to your event's datafile with the appropriate level.

See [contrib/make_sponsors.rb](make_sponsors.rb) for another option.


### Sponsor logos

Guidelines regarding sponsor logo files and formatting:

* The dimensions of the image file must be at least 200px wide. 600px will look best for high-density display.
* The background must be either white or transparent.

All logos will be resized at release time, to 200px wide. Versions for high-density display (ex. Retina) will also be created. It is recommended that you do not use a sponsor logo that is smaller than 200px wide to keep from quality degradation at resize time.

## Local Organizers

See the example local organizer team members listed in the generated data file found in `data/events/201?-yourcity.yml`. To generate the  `team_members: ` section you can use [add_organizers.sh](add_organizers.sh).

The organizer photo must be in JPG format, and should be a minimum 300px x 300px, but optimally 600px x 600px. These images should be placed in the `static/events/YYYY-CITY/organizers` directory (which the `add_organizers.sh` script will do).

Any PRs adding a new local organizer will need to be accompanied by an email to `info@devopsdays.org` with their full name and email address.


## Social sharing image

A sharing image is added to the Open Graph tags for your event pages, to improve the sharing on social networks such as Facebook (or in Slack). This image must be named `sharing.jpg` and located in `static/events/YYYY-CITY`. It should be a minimum 1200px x 630px, and use ratio: 1.91:1.

If no image is provided, then the meta tag will not be created. Facebook might try to infer it, but the links shared will just likely have no images.

## Speakers

Use [add_speakers.sh](add_speakers.sh) to add speakers and talks to an existing event. It will produce speaker-specific pages that link to their talk pages.

You can set additional optional frontmatter for speaker files:

```
Website = ""
Facebook = ""
Linkedin = ""
Pronouns = ""
Github = ""
Twitter = ""
```

If you have a two-speaker talk, create both speakers, add the talk under one of them, and set the talk file in `content/events/2017-ponyville/program/rainbow-dash.md` with a Speakers attribute like this:

```
Speakers = ["rainbow-dash","twilight-sparkle"]
```

### Program

Use [add_program.sh](add_program.sh) to add the program for your event. The program template expects 4 full talks each day and lists default times, but you can customize. The program data is stored in the event datafile such as `data/events/2017-ponyville.yml`. You don't need to know any or all of your speakers when adding the sample program, but if you have selected speakers you can list them on the program with this script.


### Speaker Images
The headshots for your speaker images should be approximately 500px wide. They will display fluidly based upon the screen size and versions for high-density display (ex. Retina) will also be created at build time. They must be in JPG format and named with the `.jpg` extension.

# Adding slides and video

After the event, you can set additional optional frontmatter for talk files such as `content/events/2017-ponyville/program/rainbow-dash.md`:

```
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
```

# Bash tips:

Set `$DOD_YEAR` and `$DOD_CITY` and the scripts won't ask
for the year and city every time.

Here are some useful bash exports/aliases. Add them to your `.bashrc` or
copy `.envrc.example` to `.envrc` and run `direnv allow`. See
[direnv](https://direnv.net/) for more info.

```
# devopsdays
export DOD_YEAR="2018"            # your year
export DOD_CITY="new-york-city"   # your city
export DODPATH=~/git/devopsdays-web   # location of Git files
alias dod='cd $DODPATH'
alias dods='cd $DODPATH/content/events/$DOD_YEAR-$DOD_CITY/speakers'
alias dodp='cd $DODPATH/content/events/$DOD_YEAR-$DOD_CITY/program'
alias dodi='cd $DODPATH/static/events/$DOD_YEAR-$DOD_CITY/speakers'
alias dodyml='dod && $EDITOR data/events/$DOD_YEAR-$DOD_CITY.yml'
alias dodfind='dod && find data/events/$DOD_YEAR-$DOD_CITY.yml content/events/$DOD_YEAR-$DOD_CITY/{speakers,program} static/events/$DOD_YEAR-$DOD_CITY/speakers'
alias dodhugo='dod && echo open http://localhost:1313 ; hugo server -w --baseUrl="http://localhost:1313"'
```

* `dod`  -- chdir to your base directory
* `dods`  -- chdir to your devopsdays speaker files
* `dodp`  -- chdir to your devopsdays program files
* `dodi`  -- chdir to your devopsdays speaker JPGs (images)
* `dodyml`  -- edit the YAML file
* `dodhugo`  -- run hugo in "watch" mode
* `dodfind`  -- Run "find" on your event's directories
  *  Example: Find all the files for speaker "jane-doe"
    * `dodfind -name '*jane-doe*'`
  *  Example: Find all the files that mention "jane-doe"
    * `dodfind -type f -print0 | xargs -0 grep jane-doe`
