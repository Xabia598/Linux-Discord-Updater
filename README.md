# Linux Discord Updater

 A simple bash script that updates your Discord via .deb with gdebi

---

# How to use it

You simply need to be root and have the packet "gdebi" installed.

```sh
apt install gdebi
```

If you already meet those requirements, you only need to execute the bash script and it automatically will update your Discord.

```sh
./discord-upd.sh
```

---

# How does it work

It makes a petition to the official Discord .deb file and downloads the latest version available, then installs it with gdebi.

Take care that, if you have Discord running at the moment, it will close and you will have to open it again after updating it.

# How do I make it a terminal command

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

./cmd-maker.sh dspd
```

It makes a copy of discord-updater.sh and moves it into /bin directory. 

After executing the script, you can try to enter the command you just made to test if it worked like it should!

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

# Possible updates

I will *maybe* update this repository and make the script run every time you boot your linux system, but, the future is incertain. Have a nice one and enjoy!
