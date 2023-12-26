# Linux Discord Updater

 A simple bash script that updates your Discord via .deb with gdebi

---

# How to use it

You simply need to be root and have the packet "gdebi", "notify-send" and "cron" installed.

```sh
apt-get install gdebi

apt-get install notify-osd (UBUNTU)

apt-get install libnotify-bin (DEBIAN)
```

If you already meet those requirements, you only need to execute cmd-maker.sh bash script to make your custom command and, in addition, run it automatically once a day with cron:

```sh
./cmd-maker.sh YOUR_COMMAND_NAME
```

---

# How does it work

It makes a petition to the official Discord .deb file and downloads the latest version available, then installs it with gdebi.

Take care that, if you have Discord running at the moment, it will close and you will have to open it again after updating it.

# How do I make it a shell command

## Via alias

It's easy, you just need to create a folder with whatever name and enter (as root) on the terminal this little command:

```sh
alias COMMAND_NAME=$PWD/discord-upd.sh
```

(You have to be in the folder you've made at the moment of executing the previous command)

It's important that you change "COMMAND_NAME" to a non-taken command name, like "dsupd" or "updds". (You can check it using ```alias -p```)

## Via cmd-maker

This method is better than alias, as you don't have to worry about the file location.

You just have to execute cmd-maker.sh and specify the name you want for the command.

For example:

```sh
./cmd-maker.sh dupd

or

./cmd-maker.sh dspd
```

It makes a copy of discord-updater.sh and moves it into /bin directory. 

After executing the script, you can try to enter the command you just made to test if it worked like it should!

(You can also try ```ls /bin | grep COMMAND_NAME```)

# Update Discord on-boot

## Via cmd-maker

You just have to run cmd-maker.sh and it will copy it to /etc/cron.daily (It's possible I'll make it more customizable on this term)

# Possible errors with gdebi

If you dont have gdebi updated, it can give you this error:

```
...
This package is uninstallable
Failed to satisfy all dependencies (broken cache)
```

## How do I fix it?

Using the following terminal commands:

```sh
apt update
apt-get --purge remove gdebi
apt-get install gdebi
```

Now try running again the script, it should work!

# UNINSTALLING

This part is very important as you don't want to remove shells or directories you don't want to remove.

## How to remove Discord Updater 

1. Execute (with root):

```
uninstall.sh YOUR_COMMAND_NAME
```

For example:

```sh
./uninstall dsupd

or

./uninstall dupd
```

This will remove the icons, crons and etc... You can still re-install it. :D

*Made by Pando with lots of <3*