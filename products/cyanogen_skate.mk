# Inherit AOSP device configuration for skate.
$(call inherit-product, device/zte/skate/device_skate.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_skate
PRODUCT_BRAND := zte
PRODUCT_DEVICE := skate
PRODUCT_MODEL := Skate
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=skate BUILD_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := Skate
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy skate specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
