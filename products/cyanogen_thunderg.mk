# Inherit AOSP device configuration for thunderg.
$(call inherit-product, device/lge/thunderg/device_thunderg.mk)

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

PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_DEVICE := thunderg
PRODUCT_MODEL := LG-P500
PRODUCT_NAME := cyanogen_thunderg

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=thunderg \
    BUILD_UTC_DATE=0 \
    BUILD_ID=GRI40 \
    BUILD_DISPLAY_ID=GRJ90 \
    BUILD_FINGERPRINT=lge/thunderg/thunderg:2.3.3/GRI40/LG-P500-V20g.19C11F164C:user/release-keys \
    PRIVATE_BUILD_DESC="thunderg-user 2.3.3 GRI40 LG-P500-V20g.19C11F164C release-keys"

#PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/thunderg

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CyanogenMod-7.2.0-RC0-$(shell date +%Y%m%d)-Thunderg-KANG

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
