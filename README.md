[![Stories in Ready](https://badge.waffle.io/mattstratton/devopsdays-web.svg?label=ready&title=Ready)](http://waffle.io/mattstratton/devopsdays-web)

# devopsdays-web
This is the website for DevOpsDays.org

## Contributing

Here are the steps to follow to get going as an DevOpsDays content contributor (or heck, even a code contributor)

1. Install [Hugo](http://gohugo.io)
2. Clone this repo
3. If you want to fire up a local copy to see your changes as you go, enter this command `hugo server -w --baseUrl="http://localhost:1313"`
4. You probably want to do the previous thing in another pane/window, as it needs to keep running. The -w watches for any changes and rebuilds on the fly. (NOTE: once we move the config to something hosted, you will have to reset the baseUrl or it will try to go to new.arresteddevops.com
6. (TODO)When you push to master on github, wercker will automatically build the site and publish it to <TESTURL>
