# Inherit AOSP device configuration for tenderloin.
$(call inherit-product, device/hp/tenderloin/device_tenderloin.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_tenderloin
PRODUCT_BRAND := hp
PRODUCT_DEVICE := tenderloin
PRODUCT_MODEL := HP Touchpad
PRODUCT_MANUFACTURER := hp
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tenderloin BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT="tmous/htc_pyramid/pyramid:2.3.4/GRJ22/125597.1:user/release-keys" PRVIATE_BUILD_DESC="1.45.531.1 CL125597 release-keys"

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cyanogen/overlay/tablet \
    vendor/cyanogen/overlay/tenderloin

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-tenderloin
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-tenderloin
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-tenderloin-KANG
    endif
endif

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
