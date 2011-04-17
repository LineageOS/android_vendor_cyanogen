# Inherit AOSP device configuration for hero.
ifdef CYANOGEN_SMALL
$(call inherit-product, device/htc/hero/small_hero.mk)
else
$(call inherit-product, device/htc/hero/full_hero.mk)
endif

# Inherit some common kmobsmod stuff.
$(call inherit-product, vendor/kmobs/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/kmobs/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kmobs_hero
PRODUCT_BRAND := htc
PRODUCT_DEVICE := hero
PRODUCT_MODEL := Hero
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRH78 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/soju/crespo:2.3.1/GRH78/85442:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.1 GRH78 85442 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/kmobs/prelink-linux-arm-hero.map

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Hero
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Hero
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Hero-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/kmobs/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
