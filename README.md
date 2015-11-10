[![Stories in Ready](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=Ready)](http://waffle.io/mattstratton/devopsdays-web) [![Stories in Progress](https://badge.waffle.io/devopsdays/devopsdays-web.svg?label=ready&title=In%20Progress)](http://waffle.io/mattstratton/devopsdays-web) [![wercker status](https://app.wercker.com/status/ad55f7c80008c8c2cc98e5f2aff7d7f4/s/master "wercker status")](https://app.wercker.com/project/bykey/ad55f7c80008c8c2cc98e5f2aff7d7f4)

You can see progress on tasks at http://waffle.io/devopsdays/devopsdays-web

# devopsdays-web
This is the website for DevOpsDays.org

## Contributing

Here are the steps to follow to get going as an DevOpsDays content contributor (or heck, even a code contributor)

1. Install [Hugo](http://gohugo.io)
2. Clone this repo
3. If you want to fire up a local copy to see your changes as you go, enter this command `hugo server -w --baseUrl="http://localhost:1313"`
4. You probably want to do the previous thing in another pane/window, as it needs to keep running. The -w watches for any changes and rebuilds on the fly.
5. When you push to master on github, wercker will automatically build the site and publish it to [http://devopsdays.github.io](http://devopsdays.github.io).
