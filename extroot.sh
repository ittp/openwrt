#!/bin/ash
echo "extroot"
# opkg update && opkg install block-mount kmod-usb-kmod-fs-ext4 kmod-usb-storage
etc=/etc
tmp=/tmp

dev="/dev/sda1"

pkgs="curl nano block-mount kmod-usb-kmod-fs-ext4 kmod-usb-storage"

install() {
    opkg update
    opkg install $pkgs
}

fstab_init {
    block detect | uci import fstab
}

prepare_device() {
    mkfs.ext4 $dev
}

copy_overlay() {
    mkdir -p /mnt/$dev
    mount $dev /mnt/$dev
    cp -a -f /overlay/. /mnt
    umount /mnt/$dev
}

#### rm -rf /tmp/extroot.sh && wget https://raw.githubusercontent.com/ittp/openwrt/main/extroot.sh -P /tmp/ && ash /tmp/extroot.sh
