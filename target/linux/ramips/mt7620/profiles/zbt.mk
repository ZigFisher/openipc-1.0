#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/WR8305RT
	NAME:=ZBT WR8305RT
	PACKAGES:=\
	kmod-usb-core kmod-usb2 kmod-usb-ohci \
	kmod-ledtrig-usbdev
endef

define Profile/WR8305RT/Description
	Support for ZBT WR8305RT routers
endef

$(eval $(call Profile,WR8305RT))
