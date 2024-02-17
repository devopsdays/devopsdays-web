#!/bin/bash
FILES=/Users/matty.stratton/src/github.com/devopsdays/devopsdays-web/data/events/*
# mv 2024-minneapolis/ 2024/minneapolis
for f in $FILES
do
# if [[ "$f" == *\.yml ]]
# then
#   fbname=$(basename $f .yml)
#   echo $fbname
#   mkdir ${fbname}
#   mv $f ${fbname}/main.yml
# fi
# echo $(basename $f)
dname=$(basename $f)
if [[ "$dname" == *-* ]]
then
IFS="-"
echo $dname
fi
done