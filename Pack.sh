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
echo 'Packing into Boot.img'
./bin/mkboot boot boot.img
echo 'Packing Complete.'
