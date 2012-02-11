# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration for lge e739.
$(call inherit-product, device/lge/e739/e739.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_e739
PRODUCT_BRAND := lge
PRODUCT_DEVICE := e739
PRODUCT_MODEL := LG-E739
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_victor BUILD_ID=GRJ22 BUILD_FINGERPRINT=lge/lge_victor/victor:2.3.4/GRJ22/V10a-OCT-05-2011.2ED317DCA9:user/release-keys PRIVATE_BUILD_DESC="lge_victor-user 2.3.4 GRJ22 V10a-OCT-05-2011.2ED317DCA9 release-keys"

# Extra e730 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/victor-common

# Release name and versioning
PRODUCT_RELEASE_NAME := LGmyTouch
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
