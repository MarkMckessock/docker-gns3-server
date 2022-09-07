#!/bin/sh
if [ -z "${CONFIG}" ]; then
	CONFIG=/data/config.ini
fi

if [ ! -e $CONFIG ]; then
	cp /config.ini /data
fi

python3 /CiscoIOUKeygen.py > /data/.iourc
gns3server -A --config /data/config.ini
