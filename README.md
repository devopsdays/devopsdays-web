[![Stories in Ready](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=Ready)](http://waffle.io/mattstratton/devopsdays-web) [![Stories in Progress](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=In%20Progress)](http://waffle.io/mattstratton/devopsdays-web) [![wercker status](https://app.wercker.com/status/ad55f7c80008c8c2cc98e5f2aff7d7f4/s/master "wercker status")](https://app.wercker.com/project/bykey/ad55f7c80008c8c2cc98e5f2aff7d7f4)

You can see progress on tasks at http://waffle.io/devopsdays/devopsdays-web

[![Throughput Graph](https://graphs.waffle.io/devopsdays/devopsdays-web/throughput.svg)](https://waffle.io/devopsdays/devopsdays-web/metrics)

# devopsdays-web
This is the website for devopsdays.org

## Contributing

If you'd like to edit a specific devopsdays event site (and/or contribute code), here's how to get started:

### Setup
1. Install [Hugo v0.15+](http://gohugo.io)
1. Fork this repo

### View site locally
1. To watch for changes and rebuild on the fly, open a new terminal, cd to your fork of the repo, and enter this command: `hugo server -w --baseUrl="http://localhost:1313"`
1. OS X has low ulimits, so you may see this message:
```
hugo server -w --baseUrl="http://localhost:1313"
[...]
Error: listen tcp 127.0.0.1:1313: socket: too many open files
```

You can correct it with this:
```
 $  hugo check ulimit
 $  sudo sysctl -w kern.maxfiles=65536
 $  sudo sysctl -w kern.maxfilesperproc=65536
 $  ulimit -n 65536 65536
```
Then in a new window:
```
 $  hugo server -w --baseUrl="http://localhost:1313"
```

A more permanent fix is to add the following to `/etc/sysctl.conf` (run `touch /etc/sysctl.conf` first if the file doesn't exist; it likely does not):

```
kern.maxfiles=20480
kern.maxfilesperproc=24576
```
...and reboot!

### Contribute changes
1. Code changes that affect the overall site will be reviewed only if they are in a separate pull request from any event-specific content. tl;dr: don't add "giant template change" in the same PR as "here are some more sponsors". If it affects anything other than your event, it should be in its own PR.
1. We use [github issues](https://github.com/devopsdays/devopsdays-web/issues) to track work, so feel free to create new ones if you like (or read/comment on existing ones).
1. Before you commit any changes, create a new branch, i.e., `git checkout -b fix-that-thing`
1. Make your changes, test them locally, then push that branch up to origin on your fork (`git push origin BRANCHNAME`)
1. Submit a pull request from the branch you just pushed
1. When a commit is merged to master on github (ideally via a PR reviewed by at least one other person), wercker will automatically build the site and publish it to [http://www.devopsdays.org](http://www.devopsdays.org).

## Creating a new event

The easiest way to create a new event is with the [make_new_event.sh](https://github.com/devopsdays/devopsdays-web/blob/master/make_new_event.sh) script. Create a branch, run the script to make a skeleton site for your event, make any desired edits, and submit a PR as explained above.

1. If your city name has special characters or diacritics, the script will remove them when it creates the event stub.
1. Events need a data file in `data/events`, for example, `data/events/2015-chicago.yml`. It must be the same name as the directory you will create for your event. See the [template data file](https://github.com/devopsdays/devopsdays-web/blob/master/yyyy-city.yml) for an example.
1. When the script copies the content directory from the sample site to `content/events/YYYY-city`, it removes `draft = true` from the frontmatter of the pages (so they will be built). Also, the `welcome.md` file needs to have a field added to its frontmatter for the alias, i.e., `aliases = ["/events/2015-chicago"]`.

Once you have created a logo graphic, you will want to add it to the following directory (creating the directory if necessary) `/static/events/yyyy-city/logo.png`. The file MUST be called `logo.png`.

### Special characters in city names

If your city has either spaces, or accented characters, you will want to add the optional parameter `displayname` to your `yyyy-city.yml`. The `name` and `city` parameters need to be named with "URL-friendly" (i.e., ASCII, no spaces), but `displayname` can have whatever you want in it.

For example, for Zürich, your event directory would be `2016-zurich`, and the data file would have the following elements:
```
name: "2015-zurich"
year: 2015
city: "Zurich"
displayname: "Zürich"
```

## Adding sponsors

Sponsors each need a file in the data directory, as such: `data/sponsors/chef.yml`. Please make sure to use the year for the sponsor (just so that the old events don't end up with newer sponsor logos, etc - but don't make one just for your city). If there is an existing sponsor and you can use it, you do not need to create the data file (or the image). If your information is different, please create a new file, such as `data/sponsors/chefchicago.yml`.  (Note: there is an experimental feature for an "override" of the sponsor data; more on this feature as it is developed)

Put the images for your sponsors in the `/static/img/sponsors` directory. They need to be PNG files and named exactly after the name of the sponsor in your event file (and the corresponding sponsor data file), i.e., `/static/img/sponsors/chef.png`.

There are a few simple guidelines regarding sponsor logo files and formatting:

* The dimensions of the image file must be 200px square.
* The background must be either white or transparent.
* There must *not* be a border.

All logos will be constrained, via markup, to 100px square; combined with the image file dimensions, this allows for high-density displays (ex. Retina). A border will be drawn around the logo using CSS.

## Speakers & Program

The program is driven by the program.md file in your event (copied from the [sample program.md](https://raw.githubusercontent.com/devopsdays/devopsdays-web/master/content/events/sample-event/program.md). To generate a data-driven program, look at the Minneapolis 2016 [speakers data files](https://github.com/devopsdays/devopsdays-web/tree/master/data/speakers/2016/minneapolis) and [program directory](https://github.com/devopsdays/devopsdays-web/tree/master/content/events/2016-minneapolis/program).

### Speaker Images
The headshots for your speaker images should be exactly 500px wide (they display at 250px wide, but upload them at 500px wide in order to make them look good on retina displays). They must be in JPG format and named with the `.jpg` extension.

## Binary files

Generally speaking, you should avoid storing any files other than logos or small images inside the repo itself (out of consideration for your fellow devopsdays organizers who have to pull down this repo). Please follow these guidelines:

- Do not upload presentations, artifacts from your event, etc. Either link to the preso on Speakerdeck/Slideshare from the presenter, or even better, create a Speakerdeck account for your event and put the presos there.
- Small, web images are fine (logos, etc). If you have high-resolution versions of your logo to share with others, please do not host them on the devopsdays-web repo.
- It is acceptable to add in a single PDF for your sponsor prospectus if you desire (in `/static/events/YYYY-city`), but please keep this file under 3 MB. It is better to host it on Google Drive or something similar, and then link to it from your site.

## Advanced Contributions
If you are going to be making changes to the overall functionality of the site, please keep the following in mind:

### Changes to content should be separate from overall functionality
"Content" means anything inside the `/content/...`, `/data/...`, or `/static/...` directories.

Changes to content should be submitted as a separate PR from changes to site functionality. It would be additionally delightful if you label PR's for site functionality (such as `bug` or `enhancement`), but that's not required.

### CSS changes are done with LESS
Please do NOT make changes to any of the files in the `/themes/devopsdays-responsive/static/css` directory. These are files that are compiled via LESS, and while your changes in there might work, they will be blown away by the LESS compiler at some point.

If you want to make changes to CSS, you will need a LESS compiler on your system. [@mattstratton](https://github.com/mattstratton) uses [CodeKit](https://incident57.com/codekit/), but that is OS X only, and is not free. Here's a list of other possible LESS compilers (note - Matt has not tested any of these):
- [SimpleLess](http://wearekiss.com/simpless) - all platforms, free.
- [Less.js](http://lesscss.org/) - node application, free.

The only place to make changes to the LESS files is in `/themes/devopsdays-responsive/static/site_variables.less` and `/themes/devopsdays-responsive/static/site.less`. Make sure your LESS compiler is compiling the output into `/themes/devopsdays-responsive/static/css/`. *DO NOT* make any changes to any other LESS file (do not directly modify the bootstrap LESS files, for example).

## Credits

Thanks to Jess Frazelle for clueing us into the awesome previews with Netlify!
