# devopsdays-theme

devopsdays-theme is the Hugo theme for the [devopsdays](https://www.devopsdays.org) website.

All features are documented in [REFERENCE.md](https://github.com/devopsdays/devopsdays-web/blob/master/themes/devopsdays-theme/REFERENCE.md).

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
If there is a feature in the theme that you would like to see, please [submit an issue](https://github.com/devopsdays/devopsdays-web/issues/new) to this repository and prepend the title with `[ENHANCEMENT]`. If you discover an issue with the theme, [submit an issue](https://github.com/devopsdays/devopsdays-web/issues/new) and prepend the title with `[BUG]`.

If you would like to help prioritize enhancements, please upvote the original issue by [adding a reaction](https://github.com/blog/2119-add-reactions-to-pull-requests-issues-and-comments).


## Contributing
See [CONTRIBUTING.md](https://github.com/devopsdays/devopsdays-web/blob/master/CONTRIBUTING.md) for details on our workflow, dev setup, and how to release new versions of the theme.

