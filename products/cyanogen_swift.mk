# Inherit AOSP device configuration for swift.
$(call inherit-product, device/lge/swift/products/full_swift.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Themes
$(call inherit-product, vendor/cyanogen/products/themes_common.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_swift
PRODUCT_BRAND := GT540
PRODUCT_DEVICE := swift
PRODUCT_MODEL := LG GT540 Swift
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=swift BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=przemo/swift/swift:2.3.7/GINGERBREAD/eng.przemo.20111006.231218:userdebug/test-keys PRIVATE_BUILD_DESC="przemo-user 2.3.7 GRI40 231218 test-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Set ro.modversion
#
PRODUCT_RELEASE_NAME := Swift
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
