#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=hisilicon
BOARDNAME:=Hisilicon HI35xx
SUBTARGETS:=armv5tej armv7
FEATURES:=squashfs usb
MAINTAINER:=Igor Zalatov (ZFT Lab.) <flyrouter@gmail.com>

KERNEL_PATCHVER:=3.0.y

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES := $(filter-out ppp%,$(DEFAULT_PACKAGES)) \
		kmod-usb-core kmod-usb2 kmod-usb-ohci \
                kmod-usb-storage kmod-fs-vfat kmod-nls-utf8 \
                kmod-ledtrig-usbdev \
                r8188eu-firmware kmod-cfg80211 kmod-mac80211 kmod-net-rtl8188eu

KERNELNAME:=zImage

define Target/Description
	Build firmware images for Hisilicon SoC based IPCam's and NVR's.
	Currently supports Xiong Mai (XM) and JVT based devices only.
	Instructions are available here (rus):
	https://zftlab.org/pages/2018010700.html
endef

$(eval $(call BuildTarget))
