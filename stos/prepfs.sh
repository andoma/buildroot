#!/bin/sh

mkdir -p $1/lib/firmware
mkdir -p $1/lib/modules
mkdir -p $1/boot
rm -f $1/etc/init.d/S50dropbear
