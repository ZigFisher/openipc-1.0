#!/bin/sh
if [ -e "/dev/mmcblk0p1" ]
then
      echo "SD-Card found - mounting."
	mount /dev/mmcblk0p1 /hdd00/p01/
else
      echo "no SD-Card found."
fi
