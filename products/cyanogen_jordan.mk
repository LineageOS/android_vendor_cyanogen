# Inherit AOSP device configuration for passion.
$(call inherit-product, device/motorola/jordan/jordan.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_jordan
PRODUCT_BRAND := MOTO
PRODUCT_DEVICE := jordan
PRODUCT_MODEL := MB525
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_UTC_DATE := 1307200000
PRODUCT_BUILD_UTC_DATE := $(date +%s)

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%y%m%d-%H%M)-NIGHTLY-Jordan
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-jordan
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-jordan
    endif
endif

# if somebody could tell me the syntax to use $(date +%s) to set dynamic date in PRODUCT_BUILD_PROP_OVERRIDES... Thanks ;)

PRODUCT_BUILD_PROP_OVERRIDES := \
BUILD_ID=GRJ22 \
BUILD_DISPLAY_ID="Gingerbread GRJ22" \
PRODUCT_NAME=MB525_RTNORD \
TARGET_DEVICE=umts_jordan \
BUILD_FINGERPRINT=MOTO/MB525_RTNORD/umts_jordan/jordan:2.3.4/3.4.2-177/1307200000:user/release-keys \
PRODUCT_BRAND=MOTO \
PRIVATE_BUILD_DESC="umts_jordan-user 2.3.4 3.4.2-177 1307200000 release-keys" \
BUILD_NUMBER=20110604 \
BUILD_UTC_DATE=1307200000 \
BUILD_VERSION_TAGS=release-keys \
TARGET_BUILD_TYPE=user \
USER=cyanogen

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/jordan

# Add the Torch app
 PRODUCT_PACKAGES += Torch
