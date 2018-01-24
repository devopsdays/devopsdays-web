#!/bin/bash

set -e

cd `dirname ${0}`

OUT=$(mktemp /tmp/output.XXXXXXXXXX) || { echo "Failed to create temp file"; exit 1; }


# Detect OS for correct 'sed' syntax
OSNAME=`uname`
SEDCMD(){
  if [[ $OSNAME == 'Linux' ]]; then
    sed -i "$@"
  elif [[ $OSNAME == 'Darwin' ]]; then
    sed -i '' "$@"
  fi
}

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

# Create necessary directories
mkdir -p ../static/events/$event_slug/organizers

# Set the creation date to current timestamp
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')

# Prompt for inputting organizers

while true; do
echo "What would you like to do?"
echo "1.  Add info for an organizer"
echo "2.  View organizers thus far"
echo "3.  Exit"
echo

echo -n "Enter your choice: "
read choice
echo

case $choice in
     1)

#################
# Organizer entry
#################
read -p "Enter organizer name: " organizername
organizer_slug=$(echo $organizername | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

# employer

read -p "Enter organizer's employer (return to skip): " employer
[ -z "${employer}" ] && employer=""

# twitter handle
read -p "Enter organizer twitter handle (return to skip): " twitter
[ -z "${twitter}" ] && twitter=''
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')

# bio
read -p "Enter organizer bio (return to skip): " bio
[ -z "${bio}" ] && bio=""

#######################
# Set organizer image
#######################

read -p "Enter path to organizer image as jpg (return to skip): " organizerimage
[ -z "${organizerimage}" ] && organizerimage=''

if [ $organizerimage ]; then
  cp "$organizerimage" ../static/events/$event_slug/organizers/$organizer_slug.jpg
else
  echo "Put organizer image at ../static/events/$event_slug/organizers/$organizer_slug.jpg before creating the pull request, if desired."
fi

####################
# Populate data file
####################

echo "
  - name: \"$organizername\"
    employer: \"$employer\"
    twitter: \"$twitter\"
    bio: \"$bio\"" >> $OUT

if [ $organizerimage ]; then
echo "    image: \"$organizer_slug.jpg\"" >> $OUT
fi

     ;;

     2)
	cat "$OUT"
     ;;
     3)
     echo "Add to ../data/events/$event_slug.yml under team_members: "
     cat "$OUT"
     break
     ;;
     *)
     echo "Invalid choice. Choose a number from 1 to 3."
     ;;
esac
done
rm $OUT
