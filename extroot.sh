#!/bin/ash
echo "extroot setup"
# opkg update && opkg install block-mount kmod-usb-kmod-fs-ext4 kmod-usb-storage

$DIR=/tmp
$FILE=extroot.sh

#### rm -rf /tmp/extroot.sh && wget https://raw.githubusercontent.com/ittp/openwrt/main/extroot.sh -P /tmp/ && ash /tmp/extroot.sh
