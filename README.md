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

# Possible updates

I will *maybe* update this repository and make the script run every time you boot your linux system, but, the future is incertain. Have a nice one and enjoy!