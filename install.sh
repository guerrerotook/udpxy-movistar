#!/bin/sh

SOURCE="https://raw.githubusercontent.com/guererotook/udpxy-movistar/main/"

curl -o /usr/local/etc/rc.d/udpxy.sh $SOURCE/usr/local/etc/rc.d/udpxy.sh
curl -o /usr/local/sbin/udpxy $SOURCE/usr/local/sbin/udpxy