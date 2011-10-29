# Inherit AOSP device configuration for vzwtab.
$(call inherit-product, device/samsung/vzwtab/full_vzwtab.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_vzwtab
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := vzwtab
PRODUCT_MODEL := SCH-I800
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# Extra vzwtab overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/vzwtab

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-VZWTab
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-VZWTab
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-VZWTab-KANG-$(shell date +%m%d)
    endif
endif

#
# Copy galaxys specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
