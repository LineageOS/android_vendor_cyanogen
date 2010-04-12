#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is the top-level configuration for a US-configured CyanogenMod build

$(call inherit-product, vendor/aosp/products/aosp_dream_us.mk)

TARGET_OTA_SCRIPT_MODE=edify
TARGET_OTA_BACKUPTOOL=True

PRODUCT_NAME := cyanogen_dream_us

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=cyanogenmod

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PACKAGES += Superuser DeskClock Stk

PRODUCT_PACKAGE_OVERLAYS := vendor/cyanogen/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    vendor/cyanogen/prebuilt/dream/etc/fstab:system/etc/fstab \
    vendor/cyanogen/prebuilt/common/etc/e2fsck.conf:system/etc/e2fsck.conf \
    vendor/cyanogen/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/cyanogen/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cyanogen/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/cyanogen/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/cyanogen/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/cyanogen/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/cyanogen/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/cyanogen/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/cyanogen/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/cyanogen/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/cyanogen/prebuilt/common/bin/usb-tether:system/bin/usb-tether \
    vendor/cyanogen/prebuilt/common/bin/shutdown:system/bin/shutdown \
    vendor/cyanogen/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cyanogen/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cyanogen/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/cyanogen/prebuilt/common/xbin/dropbear-keygen:system/xbin/dropbear-keygen

# Various prebuilt stuff that hasen't been android-ized yet
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/lib/libncurses.so:system/lib/libncurses.so \
    vendor/cyanogen/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/cyanogen/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/cyanogen/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/cyanogen/prebuilt/common/etc/profile:system/etc/profile \
    vendor/cyanogen/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/cyanogen/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/cyanogen/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/cyanogen/prebuilt/common/xbin/lsof:system/xbin/lsof \
    vendor/cyanogen/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/cyanogen/prebuilt/common/xbin/powertop:system/xbin/powertop

PRODUCT_LOCALES := en_US \
	ar_EG \
	ar_IL \
	bg_BG \
	ca_ES \
	cs_CZ \
	da_DK \
	de_AT \
	de_CH \
	de_DE \
	de_LI \
	el_GR \
	en_AU \
	en_CA \
	en_GB \
	en_IE \
	en_IN \
	en_NZ \
	en_SG \
	en_ZA \
	es_ES \
	es_US \
	fi_FI \
	fr_BE \
	fr_CA \
	fr_CH \
	fr_FR \
	he_IL \
	hi_IN \
	hr_HR \
	hu_HU \
	id_ID \
	it_CH \
	it_IT \
	iw_IL \
	ja_JP \
	ko_KR \
	lt_LT \
	lv_LV \
	nb_NO \
	nl_BE \
	nl_NL \
	pl_PL \
	pt_BR \
	pt_PT \
	ro_RO \
	ru_RU \
	sk_SK \
	sl_SI \
	sr_RS \
	sv_SE \
	th_TH \
	tl_PH \
	tr_TR \
	uk_UA \
	vi_VN \
	zh_CN \
	zh_TW
