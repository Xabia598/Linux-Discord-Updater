#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Root permission needed, please turn to root/sudo user."
  exit
fi

echo "UPDATING DISCORD..."
echo "-- Made by Xabia598 with <3 --"

rm DS_UPD

curl -L --output DS_UPD https://discord.com/api/download/stable?platform=linux&format=deb

wait;

gdebi DS_UPD -n

wait; 

rm DS_UPD

echo "Done, enjoy! :D"