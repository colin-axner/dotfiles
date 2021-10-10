- Create static IP
```
interface eth0
static ip_address=192.168.1.244/24
#static ip6_address=fd51:42f8:caae:d92e::ff/64
static routers=192.168.1.1
static domain_name_servers=192.168.1.1 91.239.100.100 185.222.222.222 185.184.222.222 #your domain providers here
```
- Create asound.conf:
```
pcm.!default  {
 type hw card 0
}
ctl.!default {
 type hw card 0
}
```

- add allo digi overlay (/boot/config.txt)
```
dtoverlay=allo-digione

- turn on i2s, uncomment:
dtparam=i2s=on
 
- add blacklist (/etc/modprobe.d/alsa-blacklist.conf
```
blacklist snd_bcm2835
```

- install headless jackd
git clone https://github.com/jackaudio/jack2.git
cd jack2
./waf configure
./waf
./waf install
```

Turn off capture - playback only! hw:
