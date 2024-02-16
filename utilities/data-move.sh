#!/bin/bash
FILES=/Users/matty.stratton/src/github.com/devopsdays/devopsdays-web/data/events/*

for f in $FILES
do
if [[ "$f" == *\.yml ]]
then
  fbname=$(basename $f .yml)
  echo $fbname
  mkdir ${fbname}
  mv $f ${fbname}/main.yml
fi
done