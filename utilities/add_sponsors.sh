#!/bin/bash

set -e

cd `dirname ${0}`

# Get year
read -p "Enter your event year (default: $(date +"%Y")): " year
[ -z "${year}" ] && year='2017'

# Get city
read -p "Enter your city name: " city
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')
# Generate event slug
event_slug=$year-$city_slug

# Prompt for inputting sponsors
while [ 1 ]
do
echo "Adding new sponsors; use CTRL+C to stop..."

# Gather info
read -p "Enter sponsor name: " sponsorname
sponsor_slug=$(echo $sponsorname | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

# set default sponsor yaml file
sponsorfile="../data/sponsors/$sponsor_slug.yml"

if [ -f $sponsorfile ];
then
  echo "Sponsor already exists"
  exit 0
fi


read -p "Enter sponsor url: " url
[ -z "${url}" ] && url=''

# twitter handle
read -p "Enter sponsor twitter handle (return for none): " twitter
[ -z "${twitter}" ] && twitter=''
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')


read -p "Enter path to 200x200 PNG logo: " logo
[ -z "${logo}" ] && logo=''


# Populate data file
cp examples/data/sponsors/sponsorname.yml $sponsorfile

sed -i '' "s/SPONSORNAME/$sponsorname/" $sponsorfile
sed -i '' "s%URL%$url%" $sponsorfile
sed -i '' "s/TWITTER/$twitter/" $sponsorfile

# Set logo

if [ $logo ]; then
  cp "$logo" ../static/img/sponsors/$sponsor_slug.png
else
  echo "Set the sponsor logo at ../static/img/sponsors/$sponsor_slug.png before submitting PR."
fi

echo "Add this to ../data/events/"$event_slug".yml under sponsors:"
echo "  - id: " $sponsor_slug
echo "    level: theirlevel"


done
