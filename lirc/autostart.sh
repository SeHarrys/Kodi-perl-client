#!/bin/sh
 
killall lircd
ir-keytable -p lirc
lircd --device=/dev/lirc0 /storage/.config/lircd.conf
