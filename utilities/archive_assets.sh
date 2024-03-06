#!/bin/bash
set -euo pipefail

cd "$(dirname "${0}")"
source common_code

##
# This script moves assets for a particular year's events to the CDN, so that
# the main repository does not become bloated with earlier years' images and
# other data. It assumes that the devopsdays-assets repository
# (https://github.com/devopsdays/devopsdays-assets) is in the folder above
# wherever devopsdays-web is checked out.
##

DEVOPSDAYS_ASSETS=$(gitroot)/../devopsdays-assets
if [ ! -d "$DEVOPSDAYS_ASSETS" ]; then
  echo "[ERROR] The devopsdays-assets repo is not checked out at ../devopsdays-assets." 1>&2
  echo "[ERROR] Please clone it to proceed." 1>&2
  exit 1
fi

if [ $# -ne 1 ]; then
  echo "Moves a year's assets to the CDN."
  echo "USAGE: archive_assets year"
  exit 1
fi

while IFS= read -r -d '' event; do
  echo "Processing event $event"

  city=$(echo "$event" | sed -E "s/.*\/$1-(.*)/\1/")
  event_asset_dir=$DEVOPSDAYS_ASSETS/events/$1/$city
  mkdir -p "$event_asset_dir"

  # HTML files must be kept in place for the browser to be able to navigate at devopsdays.org
  while IFS= read -r -d '' asset; do
    # preserve the directory structure
    relative_asset_path="$(echo "$asset" | sed "s#.*$event/##")"
    relative_asset_dir="$(dirname "$relative_asset_path")"
    mkdir -p "$event_asset_dir/$relative_asset_dir"

    # move the asset to devopsdays-assets; remove it from devopsdays-web
    destination_asset_path=$event_asset_dir/$relative_asset_path
    if [ -f "$destination_asset_path" ]; then
      echo "[ERROR] Refusing to move $asset to $destination_asset_path because it already exists."
      echo "[ERROR] Manually reconcile this name clash, and rerun the script."
      exit 1
    fi
    echo "  Moving $asset to $destination_asset_path"
    mv "$asset" "$destination_asset_path"

    # in-place edit any references to this asset to the CDN
    while IFS= read -r -d '' page; do
      sedcmd -e "s#http[s]://www.devopsdays.org/events/$1-$city/$relative_asset_path#https://assets.devopsdays.org/events/$1/$city/$relative_asset_path#g" -e "s#/events/$1-$city/$relative_asset_path#https://assets.devopsdays.org/events/$1/$city/$relative_asset_path#g" "$page"
    done < <(find "$event" -type f -name '*.html' -print0)
  done < <(find "$event" -type f -not -name '*.html' -print0)
done < <(find "$(gitroot)/static/events" -maxdepth 1 -type d -name "$1-*" -print0)
