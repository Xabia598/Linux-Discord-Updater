#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Root permission needed, please turn to root/sudo user."
  exit
fi

echo "Uninstalling... :("

echo "RM_CMD"
rm /bin/$1

echo "RM_IC"
rm -r -f /usr/share/icons/gnome/32x32/apps/discord.png

echo "RM_IC_DIR"
rm -r -f /usr/share/icons/gnome/32x32/apps

echo "RM_CR"
rm -r -f /etc/cron.daily/$1

echo "See you next time!"

