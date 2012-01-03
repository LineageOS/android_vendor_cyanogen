$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit AOSP device configuration for thunderg.
$(call inherit-product, device/lge/p500/p500.mk)

# Inherit some basic Android stuff.
$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include GPS stuff
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cyanogen_p500
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p500
PRODUCT_MODEL := LG-P500
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=thunderg \
    BUILD_UTC_DATE=0 \
    BUILD_ID=GRI40 \
    BUILD_DISPLAY_ID=GRJ90 \
    BUILD_FINGERPRINT=lge/thunderg/thunderg:2.3.3/GRI40/LG-P500-V20g.19C11F164C:user/release-keys \
    PRIVATE_BUILD_DESC="thunderg-user 2.3.3 GRI40 LG-P500-V20g.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusOne
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
