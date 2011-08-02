# Inherit AOSP device configuration for passion.
$(call inherit-product, device/motorola/droid2we/droid2we.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_droid2we
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := droid2we
PRODUCT_MODEL := DROID2 GLOBAL
PRODUCT_MANUFACTURER := Motorola

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-DROID2WE-KANG
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-DROID2WE
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-DROID2WE-KANG
    endif
endif

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=S273 BUILD_DISPLAY_ID=VZW PRODUCT_NAME=droid2we_vzw TARGET_DEVICE=cdma_droid2we BUILD_FINGERPRINT=verizon/droid2we_vzw/cdma_droid2we/droid2we:2.2/S273/2.4.330:user/ota-rel-keys,release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="cdma_droid2we-user 2.2 S273 2.4.330 ota-rel-keys,release-keys" BUILD_NUMBER=2.4.330 BUILD_UTC_DATE=1287722464 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=xrpk47

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/motorola/droid2we

# Add the Torch app
PRODUCT_PACKAGES += Torch
