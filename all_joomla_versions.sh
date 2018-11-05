#!/bin/bash

DIR="/var/www/html"

for file in $DIR/*
do
if [ -d "$file" ]
then
r="${file##*/}"

printf "%32s" $r
cd $DIR/$r
if [ -f administrator/manifests/files/joomla.xml ]
then
printf "\t joomla "
cat administrator/manifests/files/joomla.xml | grep "<version>.*</version>" | sed -rn 's/.*>([0-9.]+)<.*/\1/p'
else.
echo ""
fi

fi

done
