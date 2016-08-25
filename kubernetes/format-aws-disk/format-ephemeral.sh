#!/bin/bash -x
/usr/sbin/blkid /dev/md0 > /dev/null && exit 0
for i in $(lsblk -ld | grep -e 'xvd[bcdefg]' | awk '{print $1}'); do /usr/sbin/wipefs -fa /dev/$i ; done
for i in $(lsblk -ld | grep -e 'xvd[bcdefg]' | awk '{print $1}'); do devs="${devs} /dev/$i" ; done ; echo $devs
eval /usr/sbin/mdadm --create --verbose --force --level=stripe --raid-devices=$(lsblk -ld | grep -e 'xvd[bcdefg]' | wc -l) /dev/md0 $devs
/usr/sbin/mkfs.ext4 /dev/md0
