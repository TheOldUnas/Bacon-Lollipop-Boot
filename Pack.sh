#!/bin/bash
echo 'Checking folders...'
if ! [ -d ./boot/ramdisk/data ]; then
    mkdir ./boot/ramdisk/data
fi
if ! [ -d ./boot/ramdisk/dev ]; then
    mkdir ./boot/ramdisk/dev
fi
if ! [ -d ./boot/ramdisk/proc ]; then
    mkdir ./boot/ramdisk/proc
fi
if ! [ -d ./boot/ramdisk/sys ]; then
    mkdir ./boot/ramdisk/sys
fi
if ! [ -d ./boot/ramdisk/system ]; then
    mkdir ./boot/ramdisk/system
fi
echo 'Folders avaliabe'
echo 'Packing into Boot.img'
./bin/mkboot boot boot.img
echo 'Packing Complete.'
