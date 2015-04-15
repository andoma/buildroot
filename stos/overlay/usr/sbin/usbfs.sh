#!/bin/sh

logger "usbfs.sh add ${DEVNAME} UUID: ${ID_FS_UUID}"

if [ "$1" = "add" ]; then
    mkdir -p "/tmp/stos/fsinfo"
    set | grep -E "^(ID_.*|DEVNAME)=" > "/stos/fsinfo/${ID_FS_UUID}"
elif [ "$1" = "remove" ]; then
    rm -f "/tmp/stos/fsinfo/${ID_FS_UUID}"
fi
