[![Stories in Ready](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=Ready)](http://waffle.io/devopsdays/devopsdays-web) [![Stories in Progress](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=In%20Progress)](http://waffle.io/mattstratton/devopsdays-web) [![Build Status](https://travis-ci.org/devopsdays/devopsdays-web.svg?branch=master)](https://travis-ci.org/devopsdays/devopsdays-web)

You can see progress on tasks at http://waffle.io/devopsdays/devopsdays-web

[![Throughput Graph](https://graphs.waffle.io/devopsdays/devopsdays-web/throughput.svg)](https://waffle.io/devopsdays/devopsdays-web/metrics)

# devopsdays-web
This is the repo for managing [devopsdays.org](http://www.devopsdays.org).

## Contributing

The technical details and guidelines for contributing to this repository are outlined in [CONTRIBUTING.md](CONTRIBUTING.md). If you intend to contribute (and we sure hope you do!), please take a moment to review that document.

## Managing event content

Instructions and utilities are available for [managing sponsors, events, speakers, and more](utilities/README.md).

## Binary files

Generally speaking, you should avoid storing any files other than logos or small images inside the repo itself (out of consideration for your fellow devopsdays organizers who have to pull down this repo). Please follow these guidelines:

* Do not upload presentations, artifacts from your event, etc. Either link to the preso on Speakerdeck/Slideshare from the presenter, or even better, create a Speakerdeck account for your event and put the presos there.
* Small, web images are fine (logos, etc). If you have high-resolution versions of your logo to share with others, please do not host them on the devopsdays-web repo.
* It is acceptable to add in a single PDF for your sponsor prospectus if you desire (in `static/events/YYYY-city`), but please keep this file under 3 MB. It is better to host it on Google Drive or something similar, and then link to it from your site.
* OPTIONAL - you can host your PDF's for prospectus, etc, in the repo at [devopsdays/devopsdays-assets](https://github.com/devopsdays/devopsdays-assets) and then link to them from there. Files in that repo are presented under their relative URL at https://assets.devopsdays.org. For example, the file located at `static/events/2016/chicago/devopsdays-chicago-2016-prospectus.pdf` in the `devopsdays/devopsdays-assets` repo will be presented at `https://assets.devopsdays.org/events/2016/chicago/devopsdays-chicago-2016-prospectus.pdf`
