#!/bin/bash
set -euo pipefail

##
# This script takes in a sponsor name, and path to a new logo. It replaces
# all occurrences of the "old" logo in "old" events with an "old" sponsor
# definition, and adds the new logo in its place for this year's events.
##

cd `dirname ${0}`
source common_code

SPONSOR_NAME=${1:-}
IMAGE_TO_COPY=${2:-}
TODAY=$(date +%Y%m%d)

# Make sure we have everything we need to run.

if [ $# -ne 2 ]; then
  echo "Update a sponsor logo, retroactively changing any past events to use the old logo."
  echo "USAGE: sponsor_name /full/path/to/new/image.png"
  exit 1
fi

IMAGE_FILE="$(gitroot)/static/img/sponsors/$SPONSOR_NAME.png"
if [ ! -f "$IMAGE_FILE" ]; then
  echo "Couldn't find a sponsor image at $IMAGE_FILE."
  exit 1
fi

SPONSOR_FILE="$(gitroot)/data/sponsors/$SPONSOR_NAME.yml"
if [ ! -f "$SPONSOR_FILE" ]; then
  echo "Couldn't find a sponsor definition at $SPONSOR_FILE."
  exit 1
fi

if [ ! -f "$IMAGE_TO_COPY" ]; then
  echo "Couldn't find new sponsor image at $IMAGE_TO_COPY."
  exit 1
fi

# Start by copying the existing definitions as the "old" definitions

OLD_IMAGE_FILE=$(gitroot)/static/img/sponsors/$SPONSOR_NAME-before-$TODAY.png
OLD_SPONSOR_FILE=$(gitroot)/data/sponsors/$SPONSOR_NAME-before-$TODAY.yml

cp "$IMAGE_FILE" "$OLD_IMAGE_FILE"
cp "$SPONSOR_FILE" "$OLD_SPONSOR_FILE"

# Find all events with this sponsor in years other than this year, excluding existing renames
SPONSOR_REGEX="id:[ ]+$SPONSOR_NAME[ $]*"
pushd "$(gitroot)/data/events" > /dev/null
EVENTS_TO_MODIFY=($(grep -E "$SPONSOR_REGEX" * | grep -v 'before' | grep -v "^$(date +%Y)" | cut -d ':' -f 1))

# Modify the events.
for event_file in "${EVENTS_TO_MODIFY[@]}"; do
  echo "Modifying $event_file"
  sedcmd -E "s/$SPONSOR_REGEX/id: $SPONSOR_NAME-before-$TODAY/" $event_file
done
popd > /dev/null

# Put the new image in place.
cp "$IMAGE_TO_COPY" "$IMAGE_FILE"

# Modify any archived events.
pushd "$(gitroot)/static/events" > /dev/null
ARCHIVED_FILES_TO_MODIFY=($(grep -r "sponsors/$SPONSOR_NAME.png" * | cut -d ':' -f 1))
for archived_file in "${ARCHIVED_FILES_TO_MODIFY[@]}"; do
  echo "Modifying $archived_file"
  sedcmd "s/sponsors\/$SPONSOR_NAME.png/sponsors\/$SPONSOR_NAME-before-$TODAY.png/g" $archived_file
done
popd > /dev/null
