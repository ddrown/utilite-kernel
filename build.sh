#!/bin/sh

# build script for the kernel image. requires CONFIG_ARM_APPENDED_DTB=y in config

cat arch/arm/boot/zImage arch/arm/boot/dts/imx6q-cm-fx6.dtb >/boot/zImage-3.16
mkimage -A arm -O linux -T kernel -C none -a 10008000 -e 10008000 -n "Linux-3.16" -d /boot/zImage-3.16 /boot/uImage-3.16
mkimage -l /boot/uImage-3.16

