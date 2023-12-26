#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Root permission needed, please turn to root/sudo user."
  exit
fi

echo "Updating Discord, this could take a while..."
echo "-- Made with <3 by Xabia598--"

rm DS_UPD 2> /dev/null

notify-send -i discord 'Discord Updater' 'Discord is updating!'

echo \n
curl -L --output DS_UPD https://discord.com/api/download/stable?platform=linux&format=deb

wait;

gdebi DS_UPD -n

wait;

rm DS_UPD 2> /dev/null

notify-send -i discord 'Discord Updater' 'Discord is up to date!'

echo "Done, enjoy! :D"