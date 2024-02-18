#!/bin/bash
FILES=/Users/matty.stratton/src/github.com/devopsdays/devopsdays-web/data/events/*

for f in $FILES
do
if [[ "$f" == *\.yml ]]
then
  fbname=$(basename $f .yml)
  year=$(cut -d "-" -f1 <<< $fbname)
  city=$(cut -d "-" -f2- <<< $fbname)
  file_path="$year/$city"
  echo $file_path
  mkdir -p ${file_path}
  mv $f ${file_path}/main.yml
fi
done