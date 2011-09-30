# Inherit AOSP device configuration for tass
$(call inherit-product, device/samsung/tass/device_tass.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_tass
PRODUCT_BRAND := samsung_tass
PRODUCT_DEVICE := tass
PRODUCT_MODEL := GT-S5570
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-S5570 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-S5570/GT-S5570:2.3.4/GINGERBREAD/XXKPI:user/release-keys PRIVATE_BUILD_DESC="GT-S5570-user 2.3.4 GINGERBREAD XXKPI release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-GalaxyMini
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-GalaxyMini
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-GalaxyMini-KANG
    endif
endif
