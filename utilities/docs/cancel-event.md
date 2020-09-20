# Updating devopsdays.org if you must cancel your event

If you unfortunately need to cancel your event, there are a few changes you should make to get the website updated. Just deleting the event isn't a great idea; you want people who try to access the URL to know what happened.

Here are the things to include in your pull request:

## Delete any unnecessary pages

Any files/pages you have in the `content/events/YYYY-CITY` directory other than `welcome.md`, `contact.md`, and `conduct.md` should be deleted. Pay attention to which files you delete, as you will need to know this for the next step.

## Update `welcome.md`

You need to make two changes to the `welcome.md` page.

First, you will want to update the content to add a notice that you are canceling the event, along with any other information you want people to know (if you have details about refunds, rescheduling, etc)

Secondly, you will want to add aliases so that the pages you deleted in the previous step will redirect to the "welcome" page, rather than a 404. Update the `aliases` section of the `welcome.md` page to look like this (replace `2020-ponyville` with the appropriate year/city for your event, and add any sub-pages you have removed that are not in this list:)

```yaml
aliases = [
    "/events/2020-ponyville/",
    "/events/2020-ponyville/location/",
    "/events/2020-ponyville/propose/",
    "/events/2020-ponyville/registration/",
    "/events/2020-ponyville/sponsor/"
]
```

## Update `YYYY-CITY.yml`

If you have dates in your `data/events/YYYY-CITY.yml` file, you will want to delete them. It should look like this:

```yaml
startdate:
enddate:

cfp_date_start:
cfp_date_end:
cfp_date_announce:
```
You also need to add a new entry like this (note it is case-sensitive):

```yaml
cancel: "true"
```

Remove any location information:

```yaml
coordinates:
location:
location_address:
```

Make sure you turn off the ability for sponsors to be accepted:

```yaml
sponsors_accepted : "no"
```

You also may want to modify the description field, similar to this:

```yaml
description: "While our 2020 event will no longer happen, we will return in 2021." # Edit this to suit your preferences
```

Finally, remove everything from the menu except for `contact` and `conduct`:

```yaml
nav_elements:
  - name: contact
  - name: conduct
```

## Other notes

After you have this all completed, submit a new pull request to [devopsdays/devopsdays-web](https://www.github.com/devopsdays/devopsdays-web). 
