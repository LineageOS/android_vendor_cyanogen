# Generic kmobsmod product
PRODUCT_NAME := kmobs
PRODUCT_BRAND := kmobs
PRODUCT_DEVICE := generic

PRODUCT_PACKAGES += ADWLauncher

ifdef CYANOGEN_NIGHTLY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=kmobsmodnightly
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=kmobsmod
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# CyanogenMod specific product packages
PRODUCT_PACKAGES += \
    AndroidTerm \
    FileManager \
    CMParts \
    CMStats \
    CMUpdateNotify \
    CMWallpapers \
    DSPManager \
    libkmobs-dsp \
    Pacman

# Extra tools in CyanogenMod
PRODUCT_PACKAGES += \
    openvpn

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/kmobs/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

# Common CM overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kmobs/overlay/common

# T-Mobile theme engine
include vendor/kmobs/products/themes_common.mk

PRODUCT_COPY_FILES += \
    vendor/kmobs/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/kmobs/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/kmobs/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/kmobs/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/kmobs/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/kmobs/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/kmobs/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/kmobs/prebuilt/common/etc/profile:system/etc/profile \
    vendor/kmobs/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/kmobs/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/kmobs/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/kmobs/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/kmobs/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/kmobs/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/kmobs/prebuilt/common/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/kmobs/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/kmobs/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/kmobs/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/kmobs/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/kmobs/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/kmobs/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/kmobs/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/kmobs/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/kmobs/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

PRODUCT_COPY_FILES += \
#    vendor/kmobs/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

PRODUCT_COPY_FILES +=  \
    vendor/kmobs/proprietary/RomManager.apk:system/app/RomManager.apk \

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

ifdef CYANOGEN_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/kmobs/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
        vendor/kmobs/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
        vendor/kmobs/proprietary/Facebook.apk:./system/app/Facebook.apk \
        vendor/kmobs/proprietary/GenieWidget.apk:./system/app/GenieWidget.apk \
        vendor/kmobs/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/kmobs/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/kmobs/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/kmobs/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/kmobs/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
        vendor/kmobs/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
        vendor/kmobs/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
        vendor/kmobs/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/kmobs/proprietary/HtcCopyright.apk:./system/app/HtcCopyright.apk \
        vendor/kmobs/proprietary/HtcEmailPolicy.apk:./system/app/HtcEmailPolicy.apk \
        vendor/kmobs/proprietary/HtcSettings.apk:./system/app/HtcSettings.apk \
        vendor/kmobs/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/kmobs/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/kmobs/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/kmobs/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/kmobs/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/kmobs/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/kmobs/proprietary/PassionQuickOffice.apk:./system/app/PassionQuickOffice.apk \
        vendor/kmobs/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/kmobs/proprietary/Street.apk:./system/app/Street.apk \
        vendor/kmobs/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/kmobs/proprietary/Twitter.apk:./system/app/Twitter.apk \
        vendor/kmobs/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/kmobs/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
        vendor/kmobs/proprietary/YouTube.apk:./system/app/YouTube.apk \
        vendor/kmobs/proprietary/googlevoice.apk:./system/app/googlevoice.apk \
        vendor/kmobs/proprietary/kickback.apk:./system/app/kickback.apk \
        vendor/kmobs/proprietary/soundback.apk:./system/app/soundback.apk \
        vendor/kmobs/proprietary/talkback.apk:./system/app/talkback.apk \
        vendor/kmobs/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/kmobs/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/kmobs/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/kmobs/proprietary/libspeech.so:./system/lib/libspeech.so
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch \
        LatinIME
endif
