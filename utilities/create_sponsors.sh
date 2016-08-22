#!/bin/bash

set -e

# Get year
read -p "Enter your event year (default: $(date +"%Y")): " year
[ -z "${year}" ] && year='2016'

# Get city
read -p "Enter your city name: " city
city_slug=$(echo $city | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')
# Generate event slug
event_slug=$year-$city_slug

# Prompt for inputting sponsors
while [ 1 ]
do
echo "Adding new sponsors; use CTRL+C to stop..."

# Gather info
read -p "Enter sponsor name: " sponsorname
sponsor_slug=$(echo $sponsorname | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

if [ -f ../data/sponsors/$sponsor_slug.yml ];
then
  echo "Sponsor already exists"
  exit 0
fi

read -p "Enter sponsor url: " url
[ -z "${url}" ] && url=''

read -p "Enter path to 200x200 PNG logo: " logo
[ -z "${logo}" ] && logo=''


# Populate data file
cp examples/sponsor.yml ../data/sponsors/$sponsor_slug.yml

sed -i '' "s/SPONSORNAME/$sponsorname/" ../data/sponsors/$sponsor_slug.yml
sed -i '' "s%URL%$url%" ../data/sponsors/$sponsor_slug.yml

# Set logo

cp $logo ../static/img/sponsors/$sponsor_slug.png

echo "Add this to ../data/events/"$event_slug".yml under sponsors:"
echo "  - id: " $sponsor_slug
echo "    level: theirlevel"


done
