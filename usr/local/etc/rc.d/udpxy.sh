#!/bin/sh
#
# $FreeBSD: ports/net/udpxy/files/udpxy.in,v 1.5 2012/01/14 08:56:30 dougb Exp $
#

# PROVIDE: udpxy
# REQUIRE: NETWORKING

# Define these udpxy_* variables in one of these files:
#	/etc/rc.conf
#	/etc/rc.conf.local
#	/etc/rc.conf.d/udpxy
#
# udpxy_enable (bool):	Set to "NO" by default.
#			Set it to "YES" to enable udpxy.
# udpxy_port (number):	Set to "4022" by default.
#			Set listening port number.
# udpxy_flags (str):    Set to "-S" by default.
#                       Extra flags passed to start command.

. /etc/rc.subr

name="udpxy"
rcvar=udpxy_enable

load_rc_config ${name}

udpxy_enable=${udpxy_enable-"YES"}
udpxy_port=${udpxy_port-"4000"}
# udpxy_flags=${udpxy_flags-"-m hn0.2 -c 6"} # pfSense
udpxy_flags=${udpxy_flags-"-m vlan0.2 -c 6"} # OPN Sense

command="/usr/local/sbin/${name}"
pidfile="/var/run/${name}${udpxy_port}.pid"
udpxy_flags="-p ${udpxy_port} ${udpxy_flags}"

run_rc_command "$1"