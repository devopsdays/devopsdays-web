[![Build status](https://ci.appveyor.com/api/projects/status/2cemxawbx0vtrt8e/branch/master?svg=true)](https://ci.appveyor.com/project/DevOpsDays/devopsdays-theme/branch/master)
[![Build Status](https://travis-ci.org/devopsdays/devopsdays-theme.svg?branch=master)](https://travis-ci.org/devopsdays/devopsdays-theme)
[![GitHub release](https://img.shields.io/github/release/devopsdays/devopsdays-theme.svg)](https://github.com/qubyte/rubidium/releases)
[![license](https://img.shields.io/github/license/devopsdays/devopsdays-theme.svg)]()
[![Greenkeeper badge](https://badges.greenkeeper.io/devopsdays/devopsdays-theme.svg)](https://greenkeeper.io/)

[![Stories in Ready](https://badge.waffle.io/devopsdays/devopsdays-theme.svg?label=ready&title=Ready)](http://waffle.io/devopsdays/devopsdays-theme) [![Stories in Progress](https://badge.waffle.io/devopsdays/devopsdays-theme.svg?label=in%progress&title=In%20Progress)](http://waffle.io/devopsdays/devopsdays-theme) [![Needs Review](https://badge.waffle.io/devopsdays/devopsdays-theme.svg?label=needs-review&title=Needs%20Review)](http://waffle.io/devopsdays/devopsdays-theme)

You can see progress on tasks at http://waffle.io/devopsdays/devopsdays-theme

[![Throughput Graph](https://graphs.waffle.io/devopsdays/devopsdays-theme/throughput.svg)](https://waffle.io/devopsdays/devopsdays-theme/metrics)

# devopsdays-theme

devopsdays-theme is the Hugo theme for the [devopsdays](https://www.devopsdays.org) website.

## QA Testing the New Theme
While we are in development, your help is appreciated in identifying outstanding issues or defects. Please browse through the example site at https://dev.devopsdays.org, and if you idenfity something that is broken or missing, please [log an issue](https://github.com/devopsdays/devopsdays-theme/issues). We may mark it as a duplicate, etc, but log anything you find that seems wrong or broken.

## Theme Layout
Bear in mind that this theme lives in a separate repo from the main [devopsdays-web repo](https://github.com/devopsdays/devopsdays-web). No changes should be made to the `themes/devopsdays-theme` directory in `devopsdays-web`. If changes need to be made to the theme, they should be made in this repo, and a new version released, and the theme installed into `devopsdays-web`.

## New Features

### Frontpage Logo

On the new homepage, upcoming events are listed with a square thumbnail. The image must be square and named `logo-square.jpg` in the `static/events/YYYY-CITY/` directory. If this file does not exist, then the default logo is displayed instead.

### Event Menu Icons

When on a smaller screen, the event menu collapses to icons. These icons are named from ones available at [Font Awesome](http://fontawesome.io/icons/) and custom ones can be added as optional parameters to the list of event nav elements for the event in its data file. The common menu items have default icons for each type.

Example:

```
nav_elements:
  - name: program
  - name: speakers
  - name: registration
  - name: sponsor
  - name: stuff
    icon: "smile-o"
  - name: location
  - name: contact
  - name: conduct
```

### Improved Organizer List Page
 New elements are available via the `list_organizers` shortcode. These include a bio, a photo, and Facebook, Linkedin, GitHub, and website links (in addition to the existing Twitter links). Example usage:
 ```
 team_members:
  - name: "George Michael Bluth"
    employer: "Fakeblock"
    website: "http://www.fakebook.com"
    image: "george-michael-bluth.jpg"
    github: "fakeblock"
    twitter: "thegeorgemichaelbluth"
    bio: "At high school, George Michael is hardly known by any other students but gets good grades. He is paid to tutor Maeby, but instead, she plagiarizes from him. He briefly develops a crush on his teacher Beth Baerly because she paid attention to him. (\"Shock and Aww\") He lost the student council election, receiving only 3% of the votes. (\"The Immaculate Election\")<p>
    George Michael's good grades continue through college. To get into Julliard, George Michael develops a fake woodblock app with his roommate P-Hound called [Fakeblock](http://arresteddevelopment.wikia.com/wiki/Fakeblock). One small lie causes the app to get blown out of proportion by Maeby who thinks it is privacy software."
```
Please note that quotation marks in the bio need to be escaped. The image is relative to the `static/events/YYYY-CITY/organizers/` directory, and must be in jpg format.

### Program Page
A new template has been created to generate a program page. An example can be seen at https://dev.devopsdays.org/events/2017-ponyville/program

This is an opt-in feature; the page will need to be set for the type of `program` in order to generate it.

### Social Sharing Images
An event can create a sharing image for use on social media (when the url is shared on Facebook, for instance). This image must be named `sharing.jpg` and located in the `static/events/YYYY-CITY/` directory. It should be a minimum 1200 x 630px, and use ratio: 1.91:1.

### Blog
Blog posts now support setting an "author" name in the frontmatter; for example, like this:

```
+++
Title = "Minneapolis 2016 in review"
Date = "2016-08-08T15:59:27-05:00"
Tags = ["2016"]
Author = "Bridget Kromhout"
+++
```

If an author is not specified, attempts to display it are ignored.

## Feature Requests
If there is a feature in the theme that you would like to see, first check to see if an [enhancement request](https://github.com/devopsdays/devopsdays-theme/issues?q=is%3Aopen+is%3Aissue+label%3Aenhancement) has already been opened, and then [add a "thumbs up" reaction to the original](https://github.com/blog/2119-add-reactions-to-pull-requests-issues-and-comments). If not, please [open a new issue](https://github.com/devopsdays/devopsdays-theme/issues/new). 

## Contributing
See [CONTRIBUTING.md](https://github.com/devopsdays/devopsdays-theme/blob/master/CONTRIBUTING.md) for details on our workflow, dev setup, and how to release new versions of the theme.


## dev examples
This is just a list of some POC urls to see examples:
- [Home Page](https://dev.devopsdays.org/)
- [Event Page](https://dev.devopsdays.org/events/2017-ponyville/welcome/)
- [Talk Page with Single Speaker](https://dev.devopsdays.org/events/2017-hoofington/program/twilight-sparkle/)
- [Talk Page With Multiple Speakers](https://dev.devopsdays.org/events/2017-ponyville/program/rainbow-dash/)
- [Speaker Page](https://dev.devopsdays.org/events/2017-ponyville/speakers/fluttershy/)
- [Program Page](https://dev.devopsdays.org/events/2017-ponyville/program/)
