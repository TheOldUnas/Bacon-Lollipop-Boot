#!/bin/bash

echo 'Checking folders...'
if ! [ -d ./ramdisk/data ]; then
    mkdir ./ramdisk/data
fi
if ! [ -d ./ramdisk/dev ]; then
    mkdir ./ramdisk/dev
fi
if ! [ -d ./ramdisk/proc ]; then
    mkdir ./ramdisk/proc
fi
if ! [ -d ./ramdisk/sys ]; then
    mkdir ./ramdisk/sys
fi
if ! [ -d ./ramdisk/system ]; then
    mkdir ./ramdisk/system
fi
echo 'Folders avaliabe'
echo 'Packing Ramdisk...'
cd ./ramdisk
find . | cpio -o -H newc | gzip > ../ramdisk-boot
echo 'Ramdisk Complete'
cd ..
echo 'Packing into Boot.img'
mkbootimg --kernel boot.img-kernel --ramdisk ramdisk-boot -o boot.img
echo 'Packing Complete.'
