#!/bin/bash

set -e

cd `dirname ${0}`
source common_code

# Get year
default_year=$(date +"%Y")
if [[ ! -z $DOD_YEAR ]] ; then
  year="$DOD_YEAR"
else
  # We assume the current year (and also assume bash 3, because macs)
  read -p "Enter your event year (default: $default_year): " year
fi
[ -z "${year}" ] && year="$default_year"

# Get city
if [[ ! -z $DOD_CITY ]] ; then
  city="$DOD_CITY"
else
  read -p "Enter your city name: " city
fi
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')
# Generate event slug
event_slug=$year-$city_slug

# Prompt for inputting sponsors
while [ 1 ]
do
echo "Adding new sponsors; use CTRL+C to stop..."

# Gather info
read -p "Enter sponsor name: " sponsorname
sponsor_slug=$(echo $sponsorname | tr '-' ' ' | tr -dc '[:alnum:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

# set default sponsor yaml file
sponsorfile="../data/sponsors/$sponsor_slug.yml"

if [ -f $sponsorfile ];
then
  echo "Sponsor already exists"
  exit 0
fi


read -p "Enter sponsor url: " url
[ -z "${url}" ] && url=''

read -p "Enter sponsor twitter handle: " twitter
[ -z "${twitter}" ] && twitter=''

read -p "Enter path to PNG logo (must be at least 200px wide & have white or transparent background): " logo
[ -z "${logo}" ] && logo=''


# Populate data file
cp examples/data/sponsors/sponsorname.yml $sponsorfile

sedcmd "s/SPONSORNAME/$sponsorname/" $sponsorfile
sedcmd "s%URL%$url%" $sponsorfile

if ! [ -z "${twitter}" ]; then
  echo "twitter: \"${twitter}\"" >> $sponsorfile
fi

# Set logo

if [ $logo ]; then
  cp "$logo" ../static/img/sponsors/$sponsor_slug.png
else
  echo "Set the sponsor logo at ../static/img/sponsors/$sponsor_slug.png before submitting PR."
fi

echo "Add this to ../data/events/"$year"/"$city_slug"/main.yml under sponsors:"
echo "  - id:" $sponsor_slug
echo "    level: theirlevel"


done
