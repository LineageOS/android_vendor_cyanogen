$(call inherit-product, device/malata/harmony_gtablet/harmony_gtablet.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_harmony_gtablet
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony_gtablet
PRODUCT_MODEL := GTablet
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=harmony BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Extra overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/harmony_gtablet

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Harmony-GTablet
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Harmony-GTablet
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Harmony-GTablet-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
