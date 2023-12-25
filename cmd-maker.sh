#!/bin/bash
echo "-- Made with <3 by Xabia598--"

cp discord-updater.sh discord-updater-c.sh 
mv discord-updater-c.sh $1
cp $1 /bin
rm $1

echo Done!