[![Build Status](https://travis-ci.org/devopsdays/devopsdays-web.svg?branch=master)](https://travis-ci.org/devopsdays/devopsdays-web) [![Build status](https://ci.appveyor.com/api/projects/status/3lobrrssphdb20xd?svg=true)](https://ci.appveyor.com/project/DevOpsDays/devopsdays-web)
[![license](https://img.shields.io/github/license/devopsdays/devopsdays-theme.svg)](https://github.com/devopsdays/devopsdays-web/blob/master/LICENSE)

[![Report Issue](https://github.com/devopsdays/devopsdays-web/blob/master/utilities/img/button_report-issue.png)](https://github.com/devopsdays/devopsdays-theme/issues/new) [![Roadmap](https://github.com/devopsdays/devopsdays-web/blob/master/utilities/img/button_feature-roadmap.png)](https://github.com/devopsdays/devopsdays-theme/milestones) [![Feature Request](https://github.com/devopsdays/devopsdays-web/blob/master/utilities/img/button_feature-request.png)](https://github.com/devopsdays/devopsdays-theme/issues/new) 

# devopsdays-web

[![Greenkeeper badge](https://badges.greenkeeper.io/devopsdays/devopsdays-web.svg)](https://greenkeeper.io/)
This is the repo for managing [devopsdays.org](http://www.devopsdays.org).

## Reporting issues

If you discover an issue with the theme, please open an issue in the [devopsdays-theme repo](https://github.com/devopsdays/devopsdays-theme/issues/new).

## Contributing

The technical details and guidelines for contributing to this repository are outlined in [CONTRIBUTING.md](CONTRIBUTING.md). If you intend to contribute (and we sure hope you do!), please take a moment to review that document.

## Managing event content

Instructions and utilities are available for [managing sponsors, events, speakers, and more](utilities/README.md). Full documentation on the currently released theme is always found in  [themes/devopsdays-theme/REFERENCE.md](https://github.com/devopsdays/devopsdays-web/blob/master/themes/devopsdays-theme/REFERENCE.md).

## Binary files

Generally speaking, you should avoid storing any files other than logos or small images inside the repo itself (out of consideration for your fellow devopsdays organizers who have to pull down this repo). Please follow these guidelines:

* Do not upload presentations, artifacts from your event, etc. Either link to the preso on Speakerdeck/Slideshare from the presenter, or even better, create a Speakerdeck account for your event and put the presos there.
* Small, web images are fine (logos, etc). If you have high-resolution versions of your logo to share with others, please do not host them on the devopsdays-web repo.
* It is acceptable to add in a single PDF for your sponsor prospectus if you desire (in `static/events/YYYY-city`), but please keep this file under 3 MB. It is better to host it on Google Drive or something similar, and then link to it from your site.
* OPTIONAL - you can host your PDF's for prospectus, etc, in the repo at [devopsdays/devopsdays-assets](https://github.com/devopsdays/devopsdays-assets) and then link to them from there. Files in that repo are presented under their relative URL at https://assets.devopsdays.org. For example, the file located at `static/events/2016/chicago/devopsdays-chicago-2016-prospectus.pdf` in the `devopsdays/devopsdays-assets` repo will be presented at `https://assets.devopsdays.org/events/2016/chicago/devopsdays-chicago-2016-prospectus.pdf`

## Feature Requests
If there is a feature in the theme that you would like to see, please [submit an issue](https://github.com/devopsdays/devopsdays-theme/issues/new) to this repository and prepend the title with `[ENHANCEMENT]`. If you discover an issue with the theme, [submit an issue](https://github.com/devopsdays/devopsdays-theme/issues/new) and prepend the title with `[BUG]`.

If you would like to help prioritize enhancements, please upvote the original issue by [adding a reaction](https://github.com/blog/2119-add-reactions-to-pull-requests-issues-and-comments).

## Contributing to Theme Development
See [CONTRIBUTING.md](https://github.com/devopsdays/devopsdays-theme/blob/master/CONTRIBUTING.md) for details on our workflow, dev setup, and how to release new versions of the theme.
