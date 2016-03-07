[![Stories in Ready](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=Ready)](http://waffle.io/mattstratton/devopsdays-web) [![Stories in Progress](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=In%20Progress)](http://waffle.io/mattstratton/devopsdays-web) [![wercker status](https://app.wercker.com/status/ad55f7c80008c8c2cc98e5f2aff7d7f4/s/master "wercker status")](https://app.wercker.com/project/bykey/ad55f7c80008c8c2cc98e5f2aff7d7f4)

You can see progress on tasks at http://waffle.io/devopsdays/devopsdays-web

[![Throughput Graph](https://graphs.waffle.io/devopsdays/devopsdays-web/throughput.svg)](https://waffle.io/devopsdays/devopsdays-web/metrics)

# devopsdays-web
This is the website for DevOpsDays.org

## Contributing

Here are the steps to follow to get going as an DevOpsDays content contributor (or heck, even a code contributor)

1. Install [Hugo v0.15+](http://gohugo.io)
2. Fork this repo
3. If you want to fire up a local copy to see your changes as you go, enter this command `hugo server -w --baseUrl="http://localhost:1313"`
4. The `--baseUrl` flag is kind of flaky, so a good solution is to change the `config.toml` file to point to `localhost` before starting `hugo server -w`. DO NOT COMMIT THIS CHANGED FILE BACK TO GITHUB. Just exclude it for now. We don't add it to `.gitignore` because we might need to muck with that file...although once everything is stable we might do this for safety.
4. You probably want to do the previous thing in another pane/window, as it needs to keep running. The -w watches for any changes and rebuilds on the fly.
4. Before you make any changes, create a new branch, i.e., `git checkout -b fix-that-thing`
5. Make your changes, test them locally, then push that branch up to origin (`git push origin BRANCHNAME`)
6. Submit a pull request from the branch you just pushed
7. Ideally, this will be reviewed by someone else, but if you have commit bit on this repo and feel bold, approve it yourself :)
5. When you merge to master on github, wercker will automatically build the site and publish it to [http://devopsdays.github.io](http://devopsdays.github.io).

## Creating a new event

This is by no means complete, but a couple things to know:

1. Create a data file for your event in `data/events`, for example, `data/events/2015-chicago.yml`. It must be the same name as the directory you will create for your event. It should follow the format of `yyyy-city.yml`. It is highly recommended to just duplicate one from another event. A sample version can be found [here](https://github.com/devopsdays/devopsdays-web/blob/master/yyyy-city.yml)
2. You can either copy the files from the `/content/events/sample-event` directory into a directory named `/content/events/YYYY-city`, or do it manually as listed below.
3. Generate the pages for your event, in the following manner for each page. `hugo new events/2016-kiel/welcome.md --kind=event`
4. The `welcome.md` file needs to have a field added to its frontmatter for the alias, i.e., `aliases = ["/events/2015-chicago"]`
5. Sponsors each need a file in the data directory, as such: `data/sponsors/chef.yml`. If there is an existing sponsor and you can use it, you do not need to create the data file (or the image). If your information is different, please create a new file, such as `data/sponsors/2015chicagochef.yml`.  (Note: there is an experimental feature for an "override" of the sponsor data; more on this feature as it is developed)
6. Put the images for your sponsors in the `/static/img/sponsors` directory. They need to be PNG files and named exactly after the name of the sponsor in your event file (and the corresponding sponsor data file), i.e., `/static/img/sponsors/chef.png`.
7. You will also want to add your event's logo to the following directory (creating the directory if necessary) `/static/img/events/yyyy-city/logo.png`. The file MUST be called `logo.png`.
