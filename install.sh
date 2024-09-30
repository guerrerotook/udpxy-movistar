#!/bin/sh

SOURCE="https://raw.githubusercontent.com/guerrerotook/udpxy-movistar/refs/heads/main"

curl -o /usr/local/etc/rc.d/udpxy.sh $SOURCE/usr/local/etc/rc.d/udpxy.sh
curl -o /usr/local/sbin/udpxy $SOURCE/usr/local/sbin/udpxy

chmod +x /usr/local/etc/rc.d/udpxy.sh
chmod +x /usr/local/sbin/udpxy

service udpxy.sh enable
service udpxy.sh start