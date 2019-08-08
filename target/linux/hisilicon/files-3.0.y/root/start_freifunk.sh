#!/bin/ash

insmod 8188eu
#ifconfig wlan up
#ifconfig wlan0 <static_ipv4> netmask 255.255.255.0 up
#route add default xxx
#connect wifi
killall -9 wpa_supplicant
wpa_supplicant -iwlan0 -c/etc/wpa_freifunk.conf&
sleep 5
udhcpc -i wlan0
echo "nameserver 8.8.8.8" >/etc/resolv.conf

