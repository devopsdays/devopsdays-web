# Reference for devopsdays-theme

# Table of contents
<!-- MDTOC maxdepth:6 firsth1:0 numbering:0 flatten:0 bullets:0 updateOnSave:1 -->

[Fields in YYYY-CITY.yml](#fields-in-yyyy-cityyml)   
&emsp;[General Fields](#general-fields)   
&emsp;[Date-related Fields](#date-related-fields)   
&emsp;[Branding Fields](#branding-fields)   
&emsp;[Location Fields](#location-fields)   
&emsp;[Navigation Fields](#navigation-fields)   
&emsp;[Organizer Fields](#organizer-fields)   
&emsp;&emsp;[Team Members](#team-members)   
&emsp;&emsp;[Organizer Emails](#organizer-emails)   
&emsp;[Sponsor fields](#sponsor-fields)   
&emsp;&emsp;[Sponsor Levels](#sponsor-levels)   

<!-- /MDTOC -->


## Fields in YYYY-CITY.yml
The YYYY-CITY.yml file is the main configuration file for your event. This is what each field does.

### General Fields

| Field Name       | Type   | Required | Description                                                                                           | Example                                       |
|------------------|--------|----------|-------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| `name`           | String | Yes      | The name of the event. Four digit year with the city name in lower-case, with no spaces.              | "2017-chicago"                                |
| `year`           | String | Yes      | The year of the event. Make sure it is in quotes.                                                     | "2017"                                        |
| `city`           | String | Yes      | The displayed city name of the event. Capitalize it.                                                  | "Salt Lake City"                              |
| `event_twitter`  | String | Yes      | The twitter handle for your event such as "devopsdayschi" or "devopsdaysmsp". Exclude the "@" symbol. | "devopsdayschi"                               |
| `description`    | String | No       | Overall description of your event. Quotation marks need to be escaped.                                | "It's time for more DevOpsDays at Ponyville!" |
| `ga_tracking_id` | String | No       | If you have your own Google Analytics tracking ID, enter it here.                                     | "UA-74738648-1"                               |

### Date-related Fields
All dates are in unquoted YYYY-MM-DD, like this: `variable: 2016-01-05`

| Field Name              | Type       | Required | Description                                                                                                                                                                                                                   | Example                                               |
|-------------------------|------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| `startdate`               | YYYY-MM-DD | No       | The start date of your event. Leave blank if you don't have a venue reserved yet.                                                                                                                                             | 2016-01-05                                            |
| `enddate`                 | YYYY-MM-DD | No       | The end date of your event. Leave blank if you don't have a venue reserved yet.                                                                                                                                               | 2016-01-05                                            |
| `cfp_date_start`          | YYYY-MM-DD | No       | The date you will start accepting talk proposals. Can be a blank value.                                                                                                                                                       | 2016-01-05                                            |
| `cfp_date_end`            | YYYY-MM-DD | No       | The date you will close your call for proposals. Can be a blank value.                                                                                                                                                        | 2016-01-05                                            |
| `cfp_date_announce`       | YYYY-MM-DD | No       | The date you will inform proposers of status. Can be a blank value.                                                                                                                                                           | 2016-01-05                                            |
| `cfp_open`                | String     | No       | Either "true" or "false". Can be blank. This controls whether or not the "propose" button shows on your event page. *Deprecated field; if you have set `cfp_date_start` and `cfp_date_end` they will serve the same purpose.* | "true"                                                |
| `cfp_link`                | String     | No       | If you have a custom link for submitting proposals, add it here. This will control the Propose menu item as well as the "Propose" button.                                                                                     | "https://myurlhere" |
| `registration_date_start` | YYYY-MM-DD | No       | The date you will start accepting registration. Can be a blank value.                                                                                                                                                         | 2016-01-05                                            |
| `registration_date_end`   | YYYY-MM-DD | No       | The date you will close registration. Can be a blank value.                                                                                                                                                                   | 2016-01-05                                            |
| `registration_closed`     | String     | No       | Set this to "true" if you need to manually close registration before your registration end date.                                                                                                                              | "true"                                                |
| `registration_link`       | String     | No       | If you have a custom registration link, enter it here. This will control the Registration menu item as well as the "Register" button.                                                                                         | "https://myurlhere"  |                                                                                   |

### Branding Fields

| Field Name            | Type   | Required | Description                                                                                                     | Example             |
|-----------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------|---------------------|
| `masthead_background` | String | No       | The image, relative to `static/events/YYYY-CITY` that you want to be the background of the header on your page. | `skyline-night.jpg` |

### Location Fields

| Field Name         | Type   | Required | Description                                                                                                                                     | Example                                         |
|--------------------|--------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| `coordinates`      | String | Yes      | The coordinates of your city. [Get Latitude and Longitude of a Point](http://itouchmap.com/latlong.html). Required to display event on the map. | "41.882219, -87.640530"                         |
| `location`         | String | Yes      | The generator scripts will default to the value of `City`, but you can make it the venue name.                                                  | "Chicago Mart West"                             |
| `location_address` | String | No       | Use the street address of your venue. This will show up on the welcome page if set.                                                             | "350 West Mart Center Drive, Chicago, IL 60654" |

### Navigation Fields
These fields are used to control the navigation elements (menu) of your event's page. The syntax for navigation is thus:

```
nav_elements:
  - name: propose
  - name: location
  - name: registration
  - name: program
  - name: speakers
  - name: sponsor
  - name: contact
  - name: conduct
```

If you would like to add a custom/additional navigation to your menu, add another element where you would like it to appear. You will also need to provide the target for the link if it not relative to your event, as so:

```
nav_elements
  - name: propose
  - name: volunteer
  - name: party
    url: http://www.google.com
```
The above example would create a new menu item called "Volunteer" which linked to `devopsdays/events/YYYY-CITY/volunteer`, and another menu item called "party" which would link to `http://www.google.com`

The menu items also take an optional parameter of `icon` where you can set the font-awesome icon that will display on small screens. Choose at http://fontawesome.io/icons/. Example:

```
nav_elements
  - name: example
    icon: "map-o"
```

### Organizer Fields

#### Team Members

Remember, the organizers listed are are the same people you have on the mailing list and Slack channel.

Each team member is an element of `team_members`.

| Field Name | Type   | Required | Description                                                                           | Example                                                                                                                                                                                                                                                                                                             |
|------------|--------|----------|---------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `name`     | String | Yes      | The person's full name.                                                               | "John Doe"                                                                                                                                                                                                                                                                                                          |
| `twitter`  | String | No       | The twitter handle of the person, without the `@` symbol                              | "johndoe"                                                                                                                                                                                                                                                                                                           |
| `employer` | String | No       | The name of the person's employer.                                                    | "Acme Anvil Co."                                                                                                                                                                                                                                                                                                    |
| `github`   | String | No       | The GitHub username of the person                                                     | "johndoe"                                                                                                                                                                                                                                                                                                           |
| `facebook` | String | No       | The full URL to the person's Facebook page                                            | "https://www.facebook.com/sally.fields"                                                                                                                                                                                                                                                                             |
| `linkedin` | String | No       | The full URL to the person's LinkedIn page                                            | "https://www.linkedin.com/in/sallyfields"                                                                                                                                                                                                                                                                           |
| `website`  | String | No       | The full URL to the person's webpage                                                  | "https://mattstratton.com"                                                                                                                                                                                                                                                                                          |
| `image`    | String | No       | The name of the image for this user, located in `static/events/YYYY-CITY/organizers/` | "sally-fields.jpg"                                                                                                                                                                                                                                                                                                  |
| `bio`      | String | No       | The bio for the user. Markdown is supported. Quotation marks must be escaped.         | "Thought leader paradigm affordances physical computing quantitative vs. qualitative disrupt thought leader disrupt. Venture capital Steve Jobs pitch deck moleskine sticky note agile Steve Jobs pivot disrupt grok driven. Human-centered design bootstrapping agile driven grok food-truck ship it long shadow." |

#### Organizer Emails

| Field Name         | Type   | Required | Description             | Example                                    |
|--------------------|--------|----------|-------------------------|--------------------------------------------|
| `organizer_email` | String | Yes      | Organizer email address | "organizers-ponyville-2017@devopsdays.org" |
| `proposal_email`   | String | Yes      | Proposal email address  | "proposals-ponyville-2017@devopsdays.org"  |

### Sponsor fields

Each team member is an element of `sponsors`.

| Field Name | Type   | Required | Description                                                                                                 | Example                           |
|------------|--------|----------|-------------------------------------------------------------------------------------------------------------|-----------------------------------|
| `id`       | String | Yes      | The name of the sponsor; matches to a file in `date/sponsors                                                | arresteddevops                    |
| `level`    | String | Yes      | The level of sponsorship for this sponsor.                                                                  | gold                              |
| `url`      | String | No       | Will override the URL specified in the sponsor file. Useful if you have event-specific URL's for a sponsor. | http://mysponsor.com/?campaign=me |


| Field Name          | Type   | Required | Description                                                               | Example |
|---------------------|--------|----------|---------------------------------------------------------------------------|---------|
| `sponsors_accepted` | String | No       | Set this to "yes" if you would like the "become a sponsor" link to appear | "yes"   |

#### Sponsor Levels

All sponsorship levels are elements of `sponsor_levels`.

| Field Name | Type   | Required | Description                                                                                                                                                                                                                                 | Example |
|------------|--------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|
| `id`       | String | Yes      | Identifies the sponsor level as mapped to your list of sponsors. No spaces.                                                                                                                                                                 | gold    |
| `label`    | String | Yes      | How the sponsor level appears on the site. Spaces are allowed.                                                                                                                                                                              | Gold    |
| `max`      | String | No       | The maximum amount of sponsors allowed for this level. Once this has been reached, the "become a sponsor" link for that level will no longer appear. Setting this to "0", or leaving it blank, results in unlimited sponsors for that level | 10      |
