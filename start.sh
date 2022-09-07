#!/bin/sh
if [[ -z "${CONFIG}" ]]; then
	CONFIG=/data/config.ini
fi

if [ ! -e $CONFIG ]; then
	cp /config.ini /data
fi

gns3server -A --config /data/config.ini
