## Mainline kernel for the Utilite

Currently using the 3.16 kernel

### Files

	dot.config - kernel .config file
	imx6q-cm-fx6.dts - this goes in arch/arm/boot/dts/
	igb-mac.diff - changes the igb driver to use a random mac address if there's no eeprom on the pcie card
	build.sh - builds the uboot image from the zImage
	10-igb-mac.rules - put this in /etc/udev/rules.d to set the igb nic's mac address from utilite's specific eeprom
	igb_setmac - put this in /bin/, needed by 10-igb-mac.rules
