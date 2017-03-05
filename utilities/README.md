# Utilities
These scripts help devopsdays organizers manage their events.

## Contributing

The technical details and guidelines for contributing to this repository are outlined in [CONTRIBUTING.md](../CONTRIBUTING.md).

New utilities and updates to existing utilities are welcome, as are suggestions for default content.

## Events

Use [make_new_event.sh](make_new_event.sh) to create a new event.

1. If your city name contains spaces or special characters, the script will remove them for purposes of the event stub, which will be used in the URL and have a name like `yyyy-city`.
1. The script will create a data file for your event in `data/events/yyyy-city.yml`. This is where you will configure many of your updates and customizations. In particular, you need to list your local organizer team here.
1. The script will populate your event directory in `content/events/yyyy-city` with default content. You should edit it as desired.
1. Once you have created a logo graphic, place it in `static/events/yyyy-city/logo.png`. (The file MUST be called `logo.png`.) The sample welcome page has a commented-out element to display a logo named in this way.

## Sponsors

Many sponsors are sponsors for multiple devopsdays. If a sponsor listing already exists with the correct information, you can just add them to your datafile.

The sample datafile has some sponsor levels pre-populated; edit as desired. You will want to decide what's in your sponsor packages before accepting most types of sponsors (other than Community).

### Creating a new sponsor

Use [create_sponsors.sh](create_sponsors.sh) to easily create new sponsors.

1. Sponsors need a file in the data directory, as such: `data/sponsors/sponsorname.yml`. Before creating a new one, look to see if there is an old one, possibly with a date prepended. If it has the right URL and logo, you can use it.
1. Put the images for your sponsors in the `static/img/sponsors` directory. They need to be PNG files and named exactly after the name of the sponsor in your event file (and the corresponding sponsor data file), i.e., `static/img/sponsors/sponsorname.png`.
1. Add the new sponsor to your event's datafile with the appropriate level.

See [make_sponsors.rb](make_sponsors.rb) as well.

### Updating a sponsor

If you want to update a sponsor, keep in mind that we don't want to retroactively change history for past events. See this [previous discussion](https://github.com/devopsdays/devopsdays-web/pull/503) for guidance.

### Sponsor logos

Guidelines regarding sponsor logo files and formatting:

* The dimensions of the image file must be 200px square.
* The background must be either white or transparent.
* There must *not* be a border (one will be added using CSS).

All logos will be constrained, via markup, to 100px square; combined with the image file dimensions, this allows for high-density display (ex. Retina) compatibility.

Use [resize_sponsor_logo.sh](resize_sponsor_logo.sh) to convert a logo centered into the right dimensions.

## Speakers

Use [add_speakers.sh](add_speakers.sh) to add speakers and talks to an existing event. Allow the "speakers" item in the navigation for a link.

### Program

The program is driven by the program.md file in your event (copied from the [sample program.md](examples/sample-event/program.md). To generate a data-driven program, use [add_speakers.sh](add_speakers.sh) and then link to the talks from your program.md file. Allow the "program" item in the navigation for a link.

### Speaker Images
The headshots for your speaker images should be exactly 500px wide. (They display at 250px wide, but add them at 500px wide in order to make them look good on retina displays.) They must be in JPG format and named with the `.jpg` extension.

## Fake PR, do not merge
