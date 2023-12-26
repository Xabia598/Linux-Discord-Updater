#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Root permission needed, please turn to root/sudo user."
  exit
fi

echo "-- Made with <3 by Pando --"

echo "Establishing command..."

cp discord-updater.sh discord-updater-c.sh 
mv discord-updater-c.sh $1
cp $1 /bin
cp $1 /etc/cron.daily
rm $1

echo "Done!"

echo "Establishing notify-send icon..."

mkdir /usr/share/icons/gnome/32x32/apps
cp discord.png /usr/share/icons/gnome/32x32/apps

echo "Done!"