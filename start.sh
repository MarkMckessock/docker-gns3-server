#!/bin/sh
if [ "${CONFIG}x" -eq "x" ]; then
	CONFIG=/data/config.ini
fi

if [ ! -e $CONFIG ]; then
	cp /config.ini /data
fi

gns3server -A --config /data/config.ini
