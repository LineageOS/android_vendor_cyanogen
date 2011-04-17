# Inherit AOSP device configuration for encore.
$(call inherit-product, device/bn/encore/encore.mk)

# Inherit some common kmobsmod stuff.
$(call inherit-product, vendor/kmobs/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kmobs_encore
PRODUCT_BRAND := bn
PRODUCT_DEVICE := encore
PRODUCT_MODEL := NookColor
PRODUCT_MANUFACTURER := bn
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=encore BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_PACKAGE_OVERLAYS += vendor/kmobs/overlay/encore

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-encore
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-encore
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-encore-KANG
    endif
endif


PRODUCT_COPY_FILES +=  \
    vendor/kmobs/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

